-- fx 0.5.1 (server, lazy): https://github.com/JustGodWork/fx-oop
local FX_BUNDLE={
["shared/channel.lua"]=[[
local a=...
local b,c,d=a.fx,a.config,a.isServer
local e,f,g,j,k,l=type,tostring,select,error,pcall,print
local m,o,p,q=setmetatable,getmetatable,rawget,math.type
local r,u,v=AddEventHandler,RemoveEventHandler,RegisterNetEvent
local w,x,y=TriggerEvent,TriggerServerEvent,TriggerClientEvent
local z,A=TriggerClientEventInternal,msgpack.pack_args
local B,C=GetInvokingResource,GetGameTimer
local D,E,F=table.pack,table.unpack,table.remove
local G=Citizen.CreateThreadNow
local H=b.Schema
local I={}
local J={client=true,server=true,["local"]=true}
local function K()
local L=source
if e(L)=="number"and L>0 then
if d then return"client",L end
return"server",nil
end
return"local",nil
end
local L=d and function(L)return b.Player(L)end or function()return nil end
function I.setPlayerResolver(M)
if e(M)~="function"then j("fx.Channel.setPlayerResolver: expected a function",2)end
L=M
end
local M={}
local N={}
local O={}
function I.onReject(P)
if e(P)~="function"then j("fx.Channel.onReject: expected a function",2)end
M[#M+1]=P
return function()
for Q=#M,1,-1 do if M[Q]==P then F(M,Q)end end
end
end
local function P(Q,R,S,T,U)
local V=C()
if c.debug or not N[R]or V-N[R]>2000 then
local W=b.Logger("fx"):child(Q)
local X=O[R]and(" (+%d more)"):format(O[R])or""
W:warn("%s rejected from %s%s: %s%s",R,S,T and(" "..T)or"",U,X)
N[R],O[R]=V,nil
else
O[R]=(O[R]or 0)+1
end
if#M>0 then
local W={kind=Q,name=R,from=S,source=T,reason=U,player=T and L(T)or nil}
for X=1,#M do
local Y,Z=k(M[X],W)
if not Y then l("^1[fx] onReject hook error: "..f(Z).."^0")end
end
end
end
local Q={}
local function R(S)
local T,U=S[1],S[2]or 1000
local V={}
Q[#Q+1]=V
return function(W)
local X=C()
local Y=V[W]
if not Y or X-Y[1]>=U then V[W]={X,1};return true end
Y[2]=Y[2]+1
return Y[2]<=T
end
end
if d then
r("playerDropped",function()
local S=source
for T=1,#Q do Q[T][S]=nil end
end)
end
local S={}
local T={__index=S,__name="fx.Channel"}
T.__tostring=function(U)return"fx.Channel("..U.name..")"end
local function U(V,W,X,Y)
local Z,aa=k(H.args,V)
if Z then return aa end
j(("fx.%s(%s): %s"):format(W,f(X),f(aa):gsub("^.-:%d+: ","",1)),Y+1)
end
local function V(W,X,Y,Z)
if e(W)~="string"or W==""then j("fx."..Y..": name must be a non-empty string",3)end
X=X or{}
local aa=X.from or"local"
if not J[aa]then j(("fx.%s(%s): from must be 'client', 'server' or 'local'"):format(Y,W),3)end
local ba=X.rate
if ba~=nil and(e(ba)~="table"or q(ba[1])~="integer"or ba[1]<1
or(ba[2]~=nil and(e(ba[2])~="number"or ba[2]<=0)))then
j(("fx.%s(%s): rate must be { count, windowMs } (count an integer above 0)"):format(Y,Z or W),3)
end
return m({
name=W,label=Z or W,from=aa,kind=Y,
check=U(X.args or{"..."},Y,Z or W,3),
allow=X.rate and R(X.rate)or nil,
},T)
end
local function W(X)
if X.from=="local"then return true end
if X.from=="client"then return d end
return not d
end
local function X(Y,Z)
local aa,ba,ca,da,ea=Y.label,Y.from,Y.check,Y.allow,Y.kind
return function(...)
local fa,ga=K()
if fa~=ba then return P(ea,aa,fa,ga,"not allowed from "..fa)end
if da and ga and not da(ga)then return P(ea,aa,fa,ga,"rate limit")end
local ha,ia=ca(g("#",...),...)
if not ha then return P(ea,aa,fa,ga,ia)end
local ja={
name=aa,from=fa,source=ga,
player=ga and L(ga)or nil,
resource=fa=="local"and B()or nil,
}
return Z(ja,...)
end
end
function S.on(Y,Z)
if e(Z)~="function"then j(f(Y)..":on: expected a function",2)end
if not W(Y)then
j(("%s:on: a channel from '%s' is received on the %s"):format(f(Y),Y.from,Y.from=="client"and"server"or"client"),2)
end
local aa=Y.handlers
if not aa then
aa={}
Y.handlers=aa
local ba=X(Y,function(ba,...)
local ca,da=D(...),{E(aa)}
for ea=1,#da do
local fa=da[ea]
G(function()fa(ba,E(ca,1,ca.n))end)
end
end)
Y.token=Y.from=="local"and r(Y.name,ba)or v(Y.name,ba)
end
aa[#aa+1]=Z
return function()
for ba=#aa,1,-1 do
if aa[ba]==Z then F(aa,ba);break end
end
if#aa==0 and Y.handlers==aa then
u(Y.token)
Y.handlers,Y.token=nil,nil
end
end
end
local function Y(Z,aa,ba,...)
local ca,da=Z.check(ba,...)
if not ca then j(("%s:%s: %s"):format(f(Z),aa,da),3)end
end
function S.emit(Z,...)
Y(Z,"emit",g("#",...),...)
if Z.from=="local"then return w(Z.name,...)end
if Z.from=="client"and not d then return x(Z.name,...)end
j(("%s:emit: a channel from '%s' is sent with %s"):format(f(Z),Z.from,Z.from=="server"and"emitTo / emitAll (server)"or"emit on the client"),2)
end
local function Z(aa)
local ba=aa
if e(aa)=="table"then ba=p(aa,"serverId")or aa.serverId or p(aa,"source")end
if q(ba)=="integer"and ba>0 then return ba end
return nil
end
function S.emitTo(aa,ba,...)
if aa.from~="server"or not d then j(f(aa)..":emitTo: only for a channel from 'server', on the server",2)end
Y(aa,"emitTo",g("#",...),...)
local ca=Z(ba)
if ca then return y(aa.name,ca,...)end
if e(ba)=="table"and o(ba)==nil
and p(ba,"serverId")==nil and p(ba,"source")==nil then
local da={}
for ea=1,#ba do
da[ea]=Z(ba[ea])
if not da[ea]then j(("%s:emitTo: invalid target #%d (%s)"):format(f(aa),ea,f(ba[ea])),2)end
end
local ea=A(...)
local fa=#ea
for ga=1,#da do z(aa.name,da[ga],ea,fa)end
return
end
j(f(aa)..":emitTo: invalid target "..f(ba).." (expected a player, a server id above 0 or a list)",2)
end
function S.emitAll(aa,...)
if aa.from~="server"or not d then j(f(aa)..":emitAll: only for a channel from 'server', on the server",2)end
Y(aa,"emitAll",g("#",...),...)
return y(aa.name,-1,...)
end
m(I,{
__call=function(aa,ba,ca)
local da=V(ba,ca,"Channel")
return da
end,
__tostring=function()return"fx.Channel"end,
})
I._internal={
new=V,compileArgs=U,origin=K,reject=P,targetId=Z,
resolvePlayer=function(aa)return L(aa)end,
}
return I]],
["shared/core.lua"]=[[
local c=...
local d,e,j=c.fx,c.config,c.Promise
local l=c.isServer
local q,u,y,z,A,B,C,D,E,F,G=
type,error,tostring,rawget,rawset,setmetatable,getmetatable,pairs,ipairs,select,pcall
local H,I,J=table.pack,table.unpack,table.remove
local K,L,M=math.type,math.tointeger,math.modf
local N=j._internal
local O,Q,R,S=N.newPending,N.resolve,N.reject,N.newError
local V=DoesEntityExist
local W=GetEntityType
local X=GetGameTimer
local Y=Citizen.Wait
local Z=Citizen.CreateThread
local aa=Citizen.Trace
local ba={fx=d,config=e,isServer=l,Promise=j}
local ca={}
local da={}
local ea={}
local fa=B({},{__mode="v"})
ba.entityCache=fa
ba.netIntent=B({},{__mode="k"})
function ba.defineType(ga,ha)
ha=ha or{}
local ia=ha.parent and ba.require(ha.parent)and ca[ha.parent]or nil
local ja={
name=ga,parent=ia,entityType=ha.entityType,kind=ha.kind or"handle",
methods={},getters={},setters={},
statics={},staticGetters={},staticSetters={},
mt={__name="fx."..ga},
}
ja.cache=(ja.kind=="entity")and fa or B({},{__mode="v"})
ja.nulls=ha.nulls or{[0]=true}
ca[ga]=ja
da[#da+1]=ja
ea[ja.mt]=ja
return ja
end
function ba.instanceOf(ga,ha)
if q(ga)~="table"then return false end
local ia=C(ga)
local ja=ea[ia]
if ja==nil then
local ka=ca[ha]
return ka~=nil and ka.kind=="player"and ka.staticMT==ia
end
while ja do
if ja.name==ha then return true end
ja=ja.parent
end
return false
end
function ba.defineModule(ga)
local ha={name=ga,kind="module",statics={},staticGetters={},staticSetters={},methods={},getters={},setters={}}
ca[ga]=ha
return ha
end
function ba.require(ga)return d[ga]end
function ba.typeOf(ga)ba.require(ga);return ca[ga]end
local function ga(ha,ia,...)u(ia:format(...),ha+1)end
local function ha(ia)
local ja,ka,la,ma,na=ia.name,ia.methods,ia.getters,ia.setters,ia.mt
local function oa(pa,qa)
local ra=ka[qa]
if ra~=nil then return ra end
local sa=la[qa]
if sa~=nil then return sa(pa)end
return nil
end
local function pa(qa,ra,sa)
local ta=ma[ra]
if ta~=nil then ta(qa,sa);return end
if la[ra]~=nil or ka[ra]~=nil then ga(2,"%s.%s is read-only",ja,y(ra))end
ga(2,"%s has no property '%s'",ja,y(ra))
end
local qa=ia.safe or{}
local ra=ia.kind=="entity"
local function sa(ta,ua)
if ua=="next"and ka.next==nil then return nil end
if ra and not qa[ua]and not V(z(ta,"handle")or 0)then
ga(2,"%s does not exist (accessing '%s')",y(ta),y(ua))
end
local va=ka[ua]
if va~=nil then return va end
local wa=la[ua]
if wa~=nil then return wa(ta)end
ga(2,"%s has no member '%s'",ja,y(ua))
end
local function ta(ua,va,wa)
if ra and ma[va]~=nil and not V(z(ua,"handle")or 0)then
ga(2,"%s does not exist (writing '%s')",y(ua),y(va))
end
return pa(ua,va,wa)
end
ia.index,ia.newindex,ia.dindex,ia.dnewindex=oa,pa,sa,ta
na.__index=e.debug and sa or oa
na.__newindex=e.debug and ta or pa
na.__eq=ia.eq or function(ua,va)return z(ua,"handle")==z(va,"handle")end
na.__tostring=ia.tostring or function(ua)return("%s(%s)"):format(ja,y(ua.handle))end
end
function ba.finalize(ia)
local ja=ia.parent
if ja then
local ka={}
for la,ma in E({"methods","getters","setters"})do
for na in D(ia[ma])do ka[na]=true end
end
for la,ma in E({"methods","getters","setters"})do
local na=ia[ma]
for oa,pa in D(ja[ma])do
if not ka[oa]then na[oa]=pa end
end
end
ia.safe=ia.safe or ja.safe
end
ha(ia)
local ka,la,ma,na=ia.mt,ia.cache,ia.entityType,ia.name
local oa=ia.wrap
if not oa then
if ia.kind=="entity"then
oa=function(pa)
if pa==nil or pa==0 then return nil end
if q(pa)=="table"then return pa end
local qa=la[pa]
if qa~=nil and C(qa)==ka then return qa end
if e.debug and ma and V(pa)and W(pa)~=ma then
ga(3,"%s(%s): handle is not a %s (GetEntityType = %s)",na,y(pa),na,y(W(pa)))
end
qa=B({handle=pa},ka)
la[pa]=qa
return qa
end
else
local pa=ia.nulls
oa=function(qa)
if qa==nil or pa[qa]then return nil end
if q(qa)=="table"then return qa end
local ra=la[qa]
if ra~=nil then return ra end
ra=B({handle=qa},ka)
la[qa]=ra
return ra
end
end
ia.wrap=oa
end
local pa,qa,ra=ia.statics,ia.staticGetters,ia.staticSetters
local sa=ia.staticMT or{}
sa.__call=sa.__call or function(ta,ua)return oa(ua)end
sa.__index=sa.__index or function(ta,ua)
local va=qa[ua]
if va~=nil then return va()end
return nil
end
sa.__newindex=sa.__newindex or function(ta,ua,va)
local wa=ra[ua]
if wa~=nil then wa(va);return end
if qa[ua]~=nil or pa[ua]~=nil then ga(2,"%s.%s is read-only",na,y(ua))end
ga(2,"%s has no static property '%s'",na,y(ua))
end
sa.__tostring=sa.__tostring or function()return"fx."..na end
if pa.is==nil then
pa.is=function(ta)return ba.instanceOf(ta,na)end
end
ia.staticMT=sa
ia.static=B(pa,sa)
if ia.afterFinalize then ia.afterFinalize(ia.static)end
if ba.msgpackSetup then ba.msgpackSetup(ia)end
return ia.static
end
function ba.finalizeModule(ia)
local ja,ka,la,ma=ia.name,ia.statics,ia.staticGetters,ia.staticSetters
return B(ka,{
__index=function(na,oa)local pa=la[oa];if pa~=nil then return pa()end return nil end,
__newindex=function(na,oa,pa)
local qa=ma[oa]
if qa~=nil then qa(pa);return end
if la[oa]~=nil or ka[oa]~=nil then ga(2,"%s.%s is read-only",ja,y(oa))end
ga(2,"%s has no property '%s'",ja,y(oa))
end,
__tostring=function()return"fx."..ja end,
__call=ia.call and function(na,...)return ia.call(...)end or nil,
})
end
function ba.setDebug(ia)
e.debug=not not ia
for ja=1,#da do
local ka=da[ja]
if ka.mt and ka.index then
ka.mt.__index=ia and ka.dindex or ka.index
ka.mt.__newindex=ia and ka.dnewindex or ka.newindex
end
end
end
function ba.lazyWrap(ia)
local ja
return function(ka)
if ka==nil then return nil end
if not ja then ja=ba.typeOf(ia).wrap end
return ja(ka)
end
end
function ba.forget(ia)
local ja=z(ia,"handle")
local ka=ca[(C(ia).__name or""):sub(4)]
local la=ka and ka.cache or fa
if ja and la[ja]==ia then la[ja]=nil end
end
function ba.toHandle(ia)
if q(ia)=="table"then return ia.handle end
return ia
end
local ia={}
local ja,ka=0,false
local function la()
while ja>0 do
local ma=1
while ma<=ja do
local na,oa=G(ia[ma])
if not na or oa then
if not na then aa("^1[fx] poll task error: "..y(oa).."^7\n")end
J(ia,ma)
ja=ja-1
else
ma=ma+1
end
end
if ja>0 then Y(0)end
end
ka=false
end
function ba.addTask(ma)
ja=ja+1
ia[ja]=ma
if not ka then
ka=true
Z(la)
end
end
local ma=10000
ba.DEFAULT_TIMEOUT=ma
function ba.waitUntil(na,oa,pa,...)
local qa=O()
local ra=F("#",...)
if oa()then Q(qa,...);return qa end
local sa=ra>0 and H(...)or nil
local ta=X()+(pa or ma)
ba.addTask(function()
local ua,va=G(oa)
if not ua then R(qa,va);return true end
if va then
if sa then Q(qa,I(sa,1,sa.n))else Q(qa)end
return true
end
if X()>ta then
R(qa,S("TimeoutError",na..": timed out after "..y(pa or ma).." ms"))
return true
end
return false
end)
return qa
end
function ba.load(na,oa,pa,qa,ra,sa,...)
local ta=...
if ra and not ra(...)then
return j.reject(S("Error",("%s: invalid %s '%s'"):format(na,oa,y(ta))))
end
local ua=H(...)
pa(...)
if qa(...)then return j.resolve(ta)end
return ba.waitUntil(na,function()return qa(I(ua,1,ua.n))end,sa,ta)
end
local function na(oa,pa,qa,...)
if qa==1 then return false end
if qa==2 then Q(oa,...);return true end
R(oa,S("Error",pa..": invalid handle (status "..y(qa)..")"))
return true
end
function ba.pollStatus(oa,pa,qa)
local ra=O()
local sa=X()+(qa or ma)
ba.addTask(function()
local ta,ua=G(function()return na(ra,oa,pa())end)
if not ta then R(ra,ua);return true end
if ua then return true end
if X()>sa then
R(ra,S("TimeoutError",oa..": timed out"))
return true
end
return false
end)
return ra
end
function ba.bool(oa)
if oa==nil then return nil end
return function(...)
local pa=oa(...)
return pa~=false and pa~=0 and pa~=nil
end
end
function ba.int(oa)
if K(oa)=="float"then return L((M(oa)))or 0 end
return oa
end
function ba.fail(oa)
return j.reject(S("Error",oa))
end
local oa=GetHashKey
function ba.hash(pa)
local qa=q(pa)
if qa=="string"then return oa(pa)end
if qa=="table"then return pa.handle end
return pa
end
local pa={}
function ba.proxyHandle(qa)return z(qa,pa).handle end
function ba.proxy(qa,ra,sa,ta)
local ua=B({},{__mode="k"})
local va={}
for wa,xa in D(ra)do
va[wa]=function(...)
local ya,za=G(xa,...)
if not ya then u(za,2)end
return za
end
end
local wa={
__index=function(wa,xa)
local ya=va[xa]
if ya then return ya end
local za,Aa=G(sa,z(wa,pa).handle,xa)
if not za then u(Aa,2)end
return Aa
end,
__newindex=function(wa,xa,ya)
local za,Aa=G(ta,z(wa,pa).handle,xa,ya)
if not za then u(Aa,2)end
end,
__tostring=function(wa)return y(z(wa,pa)).."."..qa end,
}
return function(xa)
local ya=ua[xa]
if not ya then ya=B({[pa]=xa},wa);ua[xa]=ya end
return ya
end
end
return ba]],
["shared/events.lua"]=[[
local a=...
local b=a.rt
local c,d,e=AddEventHandler,RemoveEventHandler,CancelEvent
local f=NetworkGetEntityFromNetworkId
local g,i,j,k,l=type,tostring,tonumber,pcall,error
local m,o=table.pack,table.unpack
local p,q=math.tointeger,vector3
local s
local t={}
function t.logError(u,w)
s=s or b.fx.Logger("fx"):child("Events")
s:error("%s: %s",u,i(w))
end
function t.checkFn(u,w)
if g(w)~="function"then l("fx.Events."..u..": fn must be a function",3)end
end
function t.call(u,w,...)
local A,B=k(w,...)
if not A then t.logError(u,B)end
return A
end
function t.listen(u,w)
local A=c(u,w)
local B=false
return function()
if B then return end
B=true
d(A)
end
end
function t.on(u,w,A)
return function(B)
t.checkFn(u,B)
if not A then
return t.listen(w,function(...)t.call(u,B,...)end)
end
return t.listen(w,function(...)
local C=m(k(A,...))
if not C[1]then return t.logError(u,C[2])end
if C[2]==nil then return end
t.call(u,B,o(C,2,C.n))
end)
end
end
function t.resourceFilter(u,w)
if w==nil then return nil end
if g(w)=="string"then return w end
if g(w)=="table"and g(w.name)=="string"then return w.name end
l("fx.Events."..u..": resource must be a name or an fx.Resource",3)
end
function t.resource(u)return b.fx.Resource(u)end
function t.onResource(u,w,A)
return function(B,C)
t.checkFn(u,B)
local D=t.resourceFilter(u,C)
return t.listen(w,function(E)
if D~=nil and E~=D then return end
if A then t.call(u,B,t.resource(E),e)
else t.call(u,B,t.resource(E))end
end)
end
end
function t.int(u)
u=j(u)
return u and p(u)or nil
end
function t.hash(u)
local w=t.int(u)or 0
if w>=0x80000000 then w=w-0x100000000 end
return w
end
function t.player(u)
u=t.int(u)
if not u or u<=0 then return nil end
local w=b.typeOf("Player").decode
return w(u)
end
function t.entityOfNetId(u)
u=t.int(u)
if not u or u<=0 then return nil end
local w=f(u)
if not w or w==0 then return nil end
local A=b.typeOf("Entity").wrap
return A(w)
end
function t.entity(u)
u=t.int(u)
if not u or u==0 or u==-1 then return nil end
local w=b.typeOf("Entity").wrap
return w(u)
end
function t.vec(u,w,A)
return q(j(u)or 0.0,j(w)or 0.0,j(A)or 0.0)
end
function t.tbl(u)return g(u)=="table"and u or{}end
function t.str(u)
if u==nil then return nil end
return i(u)
end
return t]],
["shared/logger.lua"]=[[
local d=...
local e,f=d.config,d.isServer
local g,h,j,m,o,p,q,r,u,w=
type,tostring,select,pcall,error,rawget,rawset,next,setmetatable,getmetatable
local x,y,z,A,B,C,D,E,F=
math.type,string.format,string.rep,table.concat,table.sort,table.pack,table.unpack,table.remove,print
local G,H=GetGameTimer,GetCurrentResourceName
local I=f and os and os.date or nil
local J={Debug=0,Info=1,Success=2,Warn=3,Error=4,Fatal=5,None=6}
local K={}
for L,M in r,J do K[M]=L end
local L={
log={"","^7"},
debug={"DEBUG","^9"},
info={"INFO","^5"},
success={"SUCCESS","^2"},
warn={"WARN","^3"},
error={"ERROR","^1"},
fatal={"FATAL","^8"},
dump={"DUMP","^6"},
time={"TIME","^9"},
}
local M=10
local N="^[%a_][%w_]*$"
local function O(P)
return(y("%q",P):gsub("\\\n","\\n"))
end
local function P(Q)
local R=w(Q)
return g(R)=="table"and p(R,"__tostring")~=nil
end
local Q={number=1,string=2}
local function R(S,T)
local U,V=g(S),g(T)
if U~=V then return(Q[U]or 3)<(Q[V]or 3)end
if U=="number"or U=="string"then return S<T end
return h(S)<h(T)
end
local S
local function T(U)
if g(U)=="string"and U:match(N)then return U end
if g(U)=="string"then return"["..O(U).."]"end
return"["..S(U,nil,0,{}).."]"
end
S=function(U,V,W,X)
local Y=g(U)
if Y=="string"then return O(U)end
if Y~="table"then return h(U)end
if P(U)then return h(U)end
if X[U]then return"<cycle>"end
if r(U)==nil then return"{}"end
if W>=M then return"{...}"end
X[U]=true
local Z={}
local aa=0
for ba in r,U do aa=aa+1;Z[aa]=ba end
B(Z,R)
local ba={}
for ca=1,aa do
local da=Z[ca]
ba[ca]=T(da).." = "..S(p(U,da),V,W+1,X)
end
X[U]=nil
if not V then return"{ "..A(ba,", ").." }"end
local ca,da=z(" ",V*W),z(" ",V*(W+1))
return"{\n"..da..A(ba,",\n"..da)..",\n"..ca.."}"
end
local function U(V)return S(V,nil,0,{})end
local function V(W,...)
local X=j("#",...)
if g(W)~="string"then
local Y={U(W)}
for Z=1,X do local aa=j(Z,...);Y[Z+1]=g(aa)=="string"and aa or U(aa)end
return A(Y," ")
end
if X==0 then return W end
local Y=C(...)
for Z=1,X do
local aa=Y[Z]
if g(aa)=="table"and not P(aa)then Y[Z]=U(aa)end
end
local Z,aa=m(y,W,D(Y,1,X))
if Z then return aa end
local ba={W}
for ca=1,X do local da=Y[ca];ba[ca+1]=g(da)=="string"and da or U(da)end
return A(ba," ")
end
local W={}
local X=0
local function Y(Z,aa,ba,ca)
local da=L[aa]
local ea=p(Z,"name")
local fa=I and I("%H:%M:%S")or nil
local ga=(fa and("^9"..fa.." ")or"").."^6["..ea.."]^7 "
if da[1]~=""then ga=ga..da[2]..da[1].."^7 "end
F(ga..ca.."^0")
if X>0 then
local ha={
logger=ea,kind=aa,level=ba,levelName=K[ba],
message=(ca:gsub("%^%d","")),time=fa,gameTimer=G(),
}
for ia=1,#W do
local ja,ka=m(W[ia],ha)
if not ja then F("^1[fx.Logger] hook error: "..h(ka).."^0")end
end
end
end
local Z={}
local aa={}
local function ba(ca)
local da=p(ca,"_level")
if da then return da end
local ea=p(ca,"parent")
return ea and ba(ea)or J.Debug
end
local ca={
__index=function(ca,da)
if da=="level"then return ba(ca)end
return Z[da]
end,
__newindex=function(ca,da,ea)
if da=="level"then
if ea~=nil and(x(ea)~="integer"or not K[ea])then
o(("fx.Logger: level must be a fx.Enum.LogLevel member, got %s"):format(h(ea)),2)
end
q(ca,"_level",ea)
return
end
o(("fx.Logger: cannot assign '%s'"):format(h(da)),2)
end,
__tostring=function(ca)return"fx.Logger("..p(ca,"name")..")"end,
__name="fx.Logger",
}
local function da(ea,fa)
return u({name=ea,parent=fa,children={},timers={}},ca)
end
local function ea(fa,ga)
return function(ha,ia,...)
if ga<ba(ha)then return ha end
Y(ha,fa,ga,V(ia,...))
return ha
end
end
Z.log=ea("log",J.Info)
Z.info=ea("info",J.Info)
Z.success=ea("success",J.Success)
Z.warn=ea("warn",J.Warn)
Z.error=ea("error",J.Error)
function Z.debug(fa,ga,...)
if not e.debug or J.Debug<ba(fa)then return fa end
Y(fa,"debug",J.Debug,V(ga,...))
return fa
end
function Z.fatal(fa,ga,...)
local ha=V(ga,...)
if J.Fatal>=ba(fa)then Y(fa,"fatal",J.Fatal,ha)end
o("["..p(fa,"name").."] "..ha,2)
end
function Z.dump(fa,ga,ha,ia)
if J.Info<ba(fa)then return fa end
local ja,ka,la
if g(ga)=="string"and ha~=nil then
ja,ka,la=ga,ha,ia
else
ka,la=ga,ha or ia
end
la=x(la)=="integer"and la>=0 and la or 4
local ma=S(ka,la,0,{})
Y(fa,"dump",J.Info,ja and(ja.." "..ma)or ma)
return fa
end
function Z.assert(fa,ga,ha,...)
if not ga and J.Error>=ba(fa)then
Y(fa,"error",J.Error,ha~=nil and V(ha,...)or"assertion failed")
end
return ga
end
function Z.time(fa,ga)
if e.debug then p(fa,"timers")[ga or"default"]=G()end
return fa
end
function Z.timeEnd(fa,ga)
ga=ga or"default"
local ha=p(fa,"timers")
local ia=ha[ga]
if ia==nil then return fa end
ha[ga]=nil
if e.debug and J.Debug>=ba(fa)then
Y(fa,"time",J.Debug,("%s: %d ms"):format(ga,G()-ia))
end
return fa
end
function Z.child(fa,ga)
local ha=p(fa,"children")
local ia=ha[ga]
if not ia then
ia=da(p(fa,"name")..":"..h(ga),fa)
ha[ga]=ia
end
return ia
end
local fa={}
u(aa,{
__call=function(ga,ha)
ha=ha~=nil and h(ha)or H()
local ia=fa[ha]
if not ia then ia=da(ha);fa[ha]=ia end
return ia
end,
__tostring=function()return"fx.Logger"end,
})
function aa.onLog(ga)
if g(ga)~="function"then o("fx.Logger.onLog: expected a function",2)end
W[#W+1]=ga
X=#W
return function()
for ha=#W,1,-1 do if W[ha]==ga then E(W,ha)end end
X=#W
end
end
function aa.serialize(ga,ha)
return S(ga,ha,0,{})
end
aa.LEVEL=J
return aa]],
["shared/msgpack.lua"]=[=[
local a=...
local b=a.rt
local c=b.isServer
local d,e=msgpack,_G
local f,g=table.sort,table.unpack
local j,l,m=d.pack,d.extend,d.extend_get
local n,p,q,r,u,w,x=type,tostring,tonumber,error,rawget,setmetatable,math.type
local y,z=NetworkGetNetworkIdFromEntity,NetworkGetEntityFromNetworkId
local A=NetworkGetEntityIsNetworked
local B={
FUNCREF=10,LOCALFUNCREF=11,VECTOR2=20,VECTOR3=21,VECTOR4=22,QUATERNION=23,ENTITY=41,PLAYER=42,
}
local C={}
for D,E in pairs(B)do C[E]=D end
local function D(E)
local F=u(E,"handle")
if not c and not A(F)then
r(("%s is not networked: it cannot be sent through msgpack (ext 41 carries a network id)"):format(p(E)),0)
end
return p(y(F))
end
local function E(F)
return p(F.serverId)
end
local function F(G)
return j(G.handle),true
end
function b.msgpackSetup(G)
local H=G.mt
if G.kind=="entity"then
H.__ext,H.__pack=B.ENTITY,D
elseif G.kind=="player"then
H.__ext,H.__pack=B.PLAYER,E
if G.staticMT and not c then G.staticMT.__ext,G.staticMT.__pack=B.PLAYER,E end
else
H.__pack=F
end
end
local G={[B.ENTITY]=m(B.ENTITY),[B.PLAYER]=m(B.PLAYER)}
local H={
[B.ENTITY]={
__ext=B.ENTITY,
__pack=G[B.ENTITY]and G[B.ENTITY].__pack or D,
__unpack=function(H)
local I=x(q(H))=="integer"and q(H)or 0
local J=I>0 and z(I)or 0
if not J or J==0 then return nil end
return b.typeOf("Entity").wrap(J)
end,
},
[B.PLAYER]={
__ext=B.PLAYER,
__pack=G[B.PLAYER]and G[B.PLAYER].__pack or E,
__unpack=function(H)
local I=q(H)
if x(I)~="integer"or I<=0 then return nil end
return b.typeOf("Player").decode(I)
end,
},
}
l(H[B.ENTITY])
l(H[B.PLAYER])
local I={ids=B,types={}}
local J={}
local function K(L,N,O)
if x(N)~="integer"then r(("fx.msgpack.%s: id must be an integer, got %s"):format(L,p(N)),3)end
if N<0 or N>127 then r(("fx.msgpack.%s: id %d out of 0..127 (negative ids are reserved by the MessagePack spec)"):format(L,N),3)end
if C[N]and not O then r(("fx.msgpack.%s: id %d is used by FiveM (%s)"):format(L,N,C[N]),3)end
if(J[N]or m(N))and not O then
r(("fx.msgpack.%s: id %d is already registered%s"):format(L,N,J[N]and(" by "..J[N])or""),3)
end
end
local function L(N,O,P,Q,R)
P.__ext,P.__pack,P.__unpack=N,Q,R
l(P)
J[N]=O
return P
end
function I.extend(N)
K("extend",N.id,N.force)
if n(N.pack)~="function"or n(N.unpack)~="function"then r("fx.msgpack.extend: pack and unpack functions are required",2)end
local O=N.metatable or{}
return L(N.id,N.name or p(O.__name or N.id),O,N.pack,N.unpack)
end
local N={new=true,from=true,get=true,is=true,__id=true,__sub=true,__name=true,__fields=true,__key=true}
local O=d.unpack
local P,Q,R=table.pack,pairs,next
local S,U,V=table.concat,getmetatable,select
local function W()
local X=e.source
return c and n(X)=="string"and X:sub(1,4)=="net:"
end
local function X(Y,Z)
local _,aa,ba,ca,da,ea=Z.name,Z.fields,Z.defaults,Z.onDecode,Z.key,Z.resolve
if n(_)~="string"then r(("fx.msgpack.%s: name (string) is required"):format(Y),3)end
local fa=0
if aa~=nil then
if da~=nil then r(("fx.msgpack.%s(%s): fields and key cannot be combined (a reference only sends its key)"):format(Y,_),3)end
if n(aa)~="table"or#aa==0 then r(("fx.msgpack.%s(%s): fields must be a non-empty list of names"):format(Y,_),3)end
fa=#aa
for ga=1,fa do
local ha=aa[ga]
if n(ha)~="string"then r(("fx.msgpack.%s(%s): fields[%d] must be a string"):format(Y,_,ga),3)end
if N[ha]then r(("fx.msgpack.%s(%s): field name '%s' is reserved"):format(Y,_,ha),3)end
end
end
if da~=nil and(n(da)~="string"or N[da])then r(("fx.msgpack.%s(%s): key must be a field name"):format(Y,_),3)end
if ea~=nil and(da==nil or n(ea)~="function")then r(("fx.msgpack.%s(%s): resolve needs a key and must be a function"):format(Y,_),3)end
local ga={__name=_,__fields=aa,__key=da}
local ha={__index=ga,__name=_}
if Z.meta then for ia,ja in Q(Z.meta)do ha[ia]=ja end end
if not ha.__tostring then
ha.__tostring=function(ia)
local ja={}
if da then
ja[1]=da.."="..p(u(ia,da))
elseif aa then
for ka=1,fa do ja[ka]=aa[ka].."="..p(u(ia,aa[ka]))end
else
for ka,la in R,ia do ja[#ja+1]=p(ka).."="..p(la)end
f(ja)
end
return _.."("..S(ja,", ")..")"
end
end
local function ia(ja)
if ba then for ka,la in Q(ba)do if u(ja,ka)==nil then ja[ka]=la end end end
return w(ja,ha)
end
local ja,ka
if da then
local la=w({},{__mode="v"})
local function ma(na)
if na==nil then return nil end
if ea then return ea(na)end
local oa=la[na]
if oa==nil then
oa=ia({[da]=na})
la[na]=oa
if ca then ca(oa)end
end
return oa
end
ja=function(na)return 1,u(na,da)end
ka=function(na)
if Z.fromClient~=true and W()then return nil end
local oa=n(na)
if(oa~="number"and oa~="string")or na~=na then return nil end
return ma(na)
end
ga.get=function(na,oa)
if na~=ga then r(("%s.get: call it with a colon (%s:get(key))"):format(_,_),2)end
return ma(oa)
end
ga.from=function(na,oa)
if na~=ga then r(("%s.from: call it with a colon (%s:from(t))"):format(_,_),2)end
if ea then r(("%s:from: not available when resolve is given (the resolver owns the instances)"):format(_),2)end
local pa=u(oa,da)
if pa==nil then r(("%s:from: the table has no '%s'"):format(_,da),2)end
if U(oa)~=nil and U(oa)~=ha then r(("%s:from: the table already has a metatable"):format(_),2)end
la[pa]=ia(oa)
return oa
end
ga.new=function()r(("%s is a reference type: use %s:get(%s)"):format(_,_,da),2)end
else
if aa then
ja=function(la)
local ma={}
for na=1,fa do ma[na]=u(la,aa[na])end
return fa,g(ma,1,fa)
end
ka=function(...)
local la={}
for ma=1,fa do la[aa[ma]]=(V(ma,...))end
la=ia(la)
if ca then ca(la)end
return la
end
else
ja=function(la)
local ma={}
for na,oa in R,la do ma[na]=oa end
return 1,ma
end
ka=function(la)
if n(la)~="table"or U(la)~=nil then la={}end
local ma=ia(la)
if ca then ca(ma)end
return ma
end
end
ga.new=function(la,...)
if la~=ga then r(("%s.new: call it with a colon (%s:new(...))"):format(_,_),2)end
local ma={}
if aa then
for na=1,fa do ma[aa[na]]=(V(na,...))end
else
local na=...
if na~=nil then for oa,pa in Q(na)do ma[oa]=pa end end
end
return ia(ma)
end
ga.from=function(la,ma)
if la~=ga then r(("%s.from: call it with a colon (%s:from(t))"):format(_,_),2)end
if U(ma)~=nil and U(ma)~=ha then r(("%s:from: the table already has a metatable"):format(_),2)end
return ia(ma)
end
end
ga.is=function(la)return n(la)=="table"and U(la)==ha end
return ga,ha,ja,ka
end
function I.define(Y)
if n(Y)~="table"then r("fx.msgpack.define: expected a definition table",2)end
K("define",Y.id,Y.force)
local Z,_,aa,ba=X("define",Y)
Z.__id=Y.id
I.types[Y.name]=Z
L(Y.id,Y.name,_,
function(ca)return j(V(2,aa(ca)))end,
function(ca)return ba(O(ca))end)
return Z
end
function I.namespace(Y)
if n(Y)~="table"or n(Y.name)~="string"then r("fx.msgpack.namespace: expected { id = integer, name = string }",2)end
K("namespace",Y.id,Y.force)
local Z,_=Y.id,Y.name
local aa={}
local function ba(ca,...)
local da=aa[ca]
if not da then return nil end
return da.decode(...)
end
local ca={id=Z,name=_}
L(Z,_,{},function()r("fx.msgpack: ".._.." packs through its types",2)end,
function(da)return ba(O(da))end)
function ca.define(da,ea)
if x(da)~="integer"or da<0 then r(("%s.define: sub id must be a non-negative integer, got %s"):format(_,p(da)),2)end
if aa[da]then r(("%s.define: sub id %d is already used by %s"):format(_,da,aa[da].name),2)end
if n(ea)~="table"then r(("%s.define: expected a definition table"):format(_),2)end
local fa,ga,ha,ia=X("namespace(".._..").define",ea)
fa.__id,fa.__sub=Z,da
I.types[ea.name]=fa
ga.__ext=Z
ga.__pack=function(ja)return j(da,V(2,ha(ja)))end
aa[da]={name=ea.name,decode=ia}
return fa
end
return ca
end
function I.restoreNative()
for Y,Z in Q(G)do if Z then l(Z)end end
end
function I.roundTrip(...)
local Y=d.unpack
local Z=Y(d.pack_args(...))
return g(Z,1,V("#",...))
end
return I]=],
["shared/promise.lua"]=[[
local d=...
local g=d.SetTimeout
local j=d.Await
local k=d.CreateThreadNow
local l=d.trace
local m=d.config
local o,q,u,y,z,A,B,C,D=
type,select,error,xpcall,pcall,rawequal,getmetatable,setmetatable,tostring
local E,F=coroutine.running,coroutine.status
local G,H=table.pack,table.unpack
local I=debug.traceback
local J,K,L=0,3,4
local M=C({},{__name="fx.Promise.extra"})
local N=C({},{__name="fx.Promise.trace"})
local O={}
local P={__index=O,__name="fx.Promise"}
function P.__tostring(Q)
local R=Q.state
return("Promise(%s)"):format(R==J and"pending"or R==K and"fulfilled"or"rejected")
end
local Q={}
local R={}
R.__index=R
function R.__tostring(S)return S.name..": "..D(S.message)end
local function S(T,U,V)
local W=V or{}
W.name,W.message=T,U
return C(W,R)
end
Q.Error=R
local T={}
local U,V=1,0
local W=false
local X=nil
local Y={}
local Z=0
local aa,ba
local function ca()
local da,ea=Y,Z
Y,Z={},0
for fa=1,ea do
local ga=da[fa]
if not ga._handled then
ga._handled=true
l(("^3[fx.Promise] Unhandled rejection: %s^7\n%s\n"):format(D(ga.value),ga[N]or"(no stack)"))
end
end
end
local function da()
local ea=E()
X=ea
while U<=V and X==ea do
local fa=U
local ga,ha,ia,ja=T[fa],T[fa+1],T[fa+2],T[fa+3]
T[fa],T[fa+1],T[fa+2],T[fa+3]=nil,nil,nil,nil
U=fa+4
if ga==1 then aa(ha,ia)
elseif ga==2 then ba(ha,ia,ja)
else ha(ia)end
end
if X~=ea then return end
U,V=1,0
X=nil
W=false
if Z>0 then ca()end
end
local function ea()
if W and X then
local fa=F(X)
if fa~="suspended"and fa~="dead"then return end
elseif W then
return
end
W=true
g(0,da)
end
local function fa()
if X==nil or E()~=X then return end
X,W=nil,false
if U<=V then ea()end
end
local function ga(ha,ia,ja,ka)
local la=V
T[la+1],T[la+2],T[la+3],T[la+4]=ha,ia,ja,ka
V=la+4
ea()
end
local function ha(ia,ja,ka,...)
if ia.state~=J then return end
ia.state=ja
ia._n=ka
if ka>0 then ia.value=(...)end
if ka>1 then
local la=G(...)
ia[M]=la
end
local la=ia._r
if la then
ia._r=nil
for ma=1,#la do ga(1,ia,la[ma])end
elseif ja==L and not ia._handled then
Z=Z+1
Y[Z]=ia
ea()
end
end
local function ia(ja,ka,la)
if ja.state~=J or ja._locked then return end
if la==nil then la=I("",3)end
ja[N]=la
ha(ja,L,1,ka)
end
local function ja(ka)return A(B(ka),P)end
Q.isPromise=ja
local function ka(la)return la.next end
local function la(ma)
local na=o(ma)
if na=="function"then return true end
if na=="table"then local oa=B(ma);return o(oa)=="table"and oa.__call~=nil end
return false
end
local function ma(na,...)
if na.state~=J or na._locked then return end
local oa=q("#",...)
if oa==1 then
local pa=...
if A(pa,na)then
return ia(na,S("TypeError","promise resolved with itself"))
end
if o(pa)=="table"then
if ja(pa)then
na._locked=true
ga(2,na,pa,false)
return
end
local qa,ra=z(ka,pa)
if not qa then return ia(na,ra)end
if la(ra)then
na._locked=true
ga(2,na,pa,ra)
return
end
end
end
ha(na,K,oa,...)
end
local function na(oa)
return{e=oa,tb=I(o(oa)=="string"and oa or D(oa),2)}
end
local function oa(pa,...)
pa._locked=nil
return ma(pa,...)
end
local function pa(qa,ra,sa)
qa._locked=nil
return ia(qa,ra,sa)
end
function ba(qa,ra,sa)
local ta=false
local function ua(...)
if ta then return end
ta=true
oa(qa,...)
end
local function va(wa)
if ta then return end
ta=true
pa(qa,wa,ja(ra)and ra[N]or nil)
end
if sa==false then
ra._handled=true
local wa=ra.state
if wa==J then
local xa=C({state=J,_ok=ua,_err=va,_internal=true},P)
local ya=ra._r
if ya then ya[#ya+1]=xa else ra._r={xa}end
else
ga(1,ra,C({state=J,_ok=ua,_err=va,_internal=true},P))
end
return
end
local wa,xa=y(sa,na,ra,ua,va)
if not wa and not ta then
ta=true
pa(qa,xa.e,xa.tb)
end
end
local function qa(ra,...)
return ra,q("#",...),...
end
local function ra(sa,ta,ua,...)
if ta then
ma(sa,...)
else
local va=...
ia(sa,va.e,va.tb)
end
end
local function sa(ta)
local ua=ta._n
if ua<=1 then
if ua==1 then return ta.value end
return
end
local va=ta[M]
return H(va,1,va.n)
end
Q.values=sa
function aa(ta,ua)
local va
if ta.state==K then va=ua._ok else va=ua._err end
if ua._internal then
local wa=va
if ta.state==K then wa(sa(ta))else wa(ta.value)end
return
end
if va==nil then
if ta.state==K then
ha(ua,K,ta._n,sa(ta))
else
ua[N]=ta[N]
ha(ua,L,1,ta.value)
end
return
end
if ua._finally then
local wa,xa=y(va,na)
if not wa then return ia(ua,xa.e,xa.tb)end
local function ya()
if ta.state==K then
ha(ua,K,ta._n,sa(ta))
else
ua[N]=ta[N]
ha(ua,L,1,ta.value)
end
end
local za,Aa=true,nil
if o(xa)=="table"and not ja(xa)then za,Aa=z(ka,xa)end
if not za then return ia(ua,Aa)end
if ja(xa)or la(Aa)then
local Ba=C({state=J},P)
ma(Ba,xa)
Ba._handled=true
local Ca=C({state=J,_internal=true,
_ok=ya,
_err=function(Ca)ua[N]=Ba[N];ha(ua,L,1,Ca)end},P)
if Ba.state==J then
local Da=Ba._r
if Da then Da[#Da+1]=Ca else Ba._r={Ca}end
else
ga(1,Ba,Ca)
end
return
end
return ya()
end
if ta.state==K then
ra(ua,qa(y(va,na,sa(ta))))
else
ra(ua,qa(y(va,na,ta.value)))
end
end
local function ta()
return C({state=J,_n=0},P)
end
function Q.new(ua)
local va=ta()
if ua~=nil then
local function wa(...)return ma(va,...)end
local function xa(ya,...)
if m.debug and q("#",...)>0 then
l("^3[fx.Promise] reject() ignores extra values (only the reason is kept)^7\n")
end
return ia(va,ya)
end
local ya,za=y(ua,na,wa,xa)
if not ya then ia(va,za.e,za.tb)end
end
return va
end
function O.resolve(ua,...)ma(ua,...);return ua end
function O.reject(ua,va,...)
if m.debug and q("#",...)>0 then
l("^3[fx.Promise] reject() ignores extra values (only the reason is kept)^7\n")
end
ia(ua,va);return ua
end
local function ua(va,wa)
va._handled=true
if va.state==J then
local xa=va._r
if xa then xa[#xa+1]=wa else va._r={wa}end
else
ga(1,va,wa)
end
return wa
end
function O.next(va,wa,xa)
local ya=ta()
if la(wa)then ya._ok=wa end
if la(xa)then ya._err=xa end
return ua(va,ya)
end
function O.catch(va,wa)
return va:next(nil,wa)
end
function O.finally(va,wa)
local xa=ta()
if la(wa)then
xa._ok,xa._err,xa._finally=wa,wa,true
end
return ua(va,xa)
end
local function va(wa)
local xa=wa.value
if o(xa)=="string"then
local ya=wa[N]
if ya and ya~=""then
xa=xa.."\n[fx.Promise] rejected at:"..(ya:sub(1,1)=="\n"and ya or"\n"..ya)
end
end
u(xa,0)
end
local wa="await must be called inside async() or a Citizen thread"
function O.await(xa)
local ya=xa.state
if ya==J then
local za,Aa=E()
if Aa then u(wa,2)end
xa._handled=true
fa()
z(j,xa)
ya=xa.state
end
if ya==K then return sa(xa)end
xa._handled=true
return va(xa)
end
local function xa(ya)
if ja(ya)then return ya end
local za=ta()
ma(za,ya)
return za
end
local function ya(za)
if ja(za)then return O.await(za)end
if o(za)=="table"and o(za.state)=="number"and za.next~=nil then
if za.state==3 then return za.value end
if za.state==4 then u(za.value,0)end
end
return O.await(xa(za))
end
function Q.resolve(...)
if q("#",...)==1 then
local za=...
if ja(za)then return za end
end
local za=ta()
ma(za,...)
return za
end
function Q.reject(za)
local Aa=ta()
ia(Aa,za)
return Aa
end
local function za(Aa,Ba,Ca,Da)
local Ea=#Aa
local Fa=ta()
if Ea==0 then ma(Fa,Da);return Fa end
local Ga=Ea
local Ha={}
for Ia=1,Ea do
xa(Aa[Ia]):next(function(...)
if Ba(Fa,Ha,Ia,true,...)then
Ga=Ga-1
if Ga==0 then Ca(Fa,Ha)end
end
end,function(Ja)
if Ba(Fa,Ha,Ia,false,Ja)then
Ga=Ga-1
if Ga==0 then Ca(Fa,Ha)end
end
end)
end
return Fa
end
function Q.all(Aa)
return za(Aa,function(Ba,Ca,Da,Ea,Fa)
if not Ea then ia(Ba,Fa);return false end
Ca[Da]=Fa
return true
end,function(Ba,Ca)Ca.n=#Aa;ma(Ba,Ca)end,{n=0})
end
function Q.allPacked(Aa)
return za(Aa,function(Ba,Ca,Da,Ea,...)
if not Ea then ia(Ba,(...));return false end
Ca[Da]=G(...)
return true
end,function(Ba,Ca)Ca.n=#Aa;ma(Ba,Ca)end,{n=0})
end
function Q.allSettled(Aa)
return za(Aa,function(Ba,Ca,Da,Ea,Fa)
if Ea then Ca[Da]={status="fulfilled",value=Fa}
else Ca[Da]={status="rejected",reason=Fa}end
return true
end,function(Ba,Ca)Ca.n=#Aa;ma(Ba,Ca)end,{n=0})
end
function Q.race(Aa)
local Ba=ta()
for Ca=1,#Aa do
xa(Aa[Ca]):next(function(...)ma(Ba,...)end,function(Da)ia(Ba,Da)end)
end
return Ba
end
function Q.any(Aa)
local Ba=#Aa
local Ca=ta()
if Ba==0 then
ia(Ca,S("AggregateError","All promises were rejected",{errors={}}))
return Ca
end
local Da,Ea={},Ba
for Fa=1,Ba do
xa(Aa[Fa]):next(function(...)ma(Ca,...)end,function(Ga)
Da[Fa]=Ga
Ea=Ea-1
if Ea==0 then
ia(Ca,S("AggregateError","All promises were rejected",{errors=Da}))
end
end)
end
return Ca
end
function Q.delay(Aa,...)
local Ba=ta()
local Ca=G(...)
g(Aa or 0,function()ma(Ba,H(Ca,1,Ca.n))end)
return Ba
end
function Q.timeout(Aa,Ba,Ca)
Aa=xa(Aa)
local Da=ta()
g(Ba,function()
ia(Da,S("TimeoutError",Ca or("timed out after "..D(Ba).." ms"),{timeout=Ba}))
end)
Aa:next(function(...)
ma(Da,...)
end,function(Ea)
Da[N]=Aa[N]
ia(Da,Ea,Aa[N])
end)
return Da
end
function Q.TimeoutError(Aa,Ba)
return S("TimeoutError",Aa,{timeout=Ba})
end
local function Aa(Ba,Ca,...)
if Ca then ma(Ba,...)else local Da=...;ia(Ba,Da.e,Da.tb)end
end
local function Ba(Ca)
return function(...)
local Da=ta()
local Ea=G(...)
k(function()
Aa(Da,y(Ca,na,H(Ea,1,Ea.n)))
end)
return Da
end
end
Q._internal={
PromiseMT=P,methods=O,resolve=ma,reject=ia,values=sa,
newPending=ta,drain=da,newError=S,TRACE=N,
}
local Ca={Promise=Q,async=Ba,await=ya}
return Ca]],
["shared/rpc.lua"]=[[
local a=...
local b,c,d,e=a.fx,a.rt,a.config,a.isServer
local f,g,h,i,j,k,l=type,tostring,select,error,pcall,setmetatable,getmetatable
local m,o=table.pack,table.unpack
local q,s,t=TriggerEvent,TriggerServerEvent,TriggerClientEvent
local u,v=GetCurrentResourceName,Citizen.SetTimeout
local w=b.Channel
local x=w._internal
local y=c.Promise
local z=y._internal
local A,B,D,E=z.newPending,z.resolve,z.reject,z.newError
local F=u()
local G=10000
local H={}
local I={}
local J=math.random(1,0x3FFFFFFF)
local K={client="server",server="client",["local"]="local"}
local L={}
local function M(N)
local O=K[N]
local Q=L[O]
if Q then return Q end
local R=(O=="local"and"__fxrpc:lres:"or"__fxrpc:res:")..F
Q=x.new(R,{from=O,args={"string:128","integer","boolean","..."}},"Rpc","response")
Q:on(function(S,T,U,V,...)
local W=I[U]
if not W or W.name~=T then return end
if W.target and S.source~=W.target then
return x.reject("Rpc",T,S.from,S.source,"response from another client")
end
I[U]=nil
if not V then return D(W.p,E("RpcError",g((...))or"remote error"))end
if W.returns then
local X,Y=W.returns(h("#",...),...)
if not X then
x.reject("Rpc",T,S.from,S.source,"invalid response: "..Y)
return D(W.p,E("RpcError",T..": invalid response ("..Y..")"))
end
end
B(W.p,...)
end)
L[O]=Q
return Q
end
local N={}
local O={__index=N,__name="fx.Rpc"}
O.__tostring=function(Q)return"fx.Rpc("..Q.name..")"end
local function Q(R,S,T,U,V,...)
if R.from=="client"then return t("__fxrpc:res:"..T,S.source,R.name,U,V,...)end
if R.from=="server"then return s("__fxrpc:res:"..T,R.name,U,V,...)end
return q("__fxrpc:lres:"..T,R.name,U,V,...)
end
local R
local function S(T,U)
if T.from=="client"then
R=R or b.Logger("fx"):child("Rpc")
R:error("%s handler failed: %s",T.name,g(U))
return d.debug and g(U)or"internal error"
end
return g(U)
end
function N.handle(T,U)
if f(U)~="function"then i(g(T)..":handle: expected a function",2)end
if T.handled then i(g(T)..":handle: this RPC already has a handler in this resource",2)end
T.handled=true
local V,W=T.check,T.name
local X=T.request:on(function(X,Y,Z,...)
local aa,ba=V(h("#",...),...)
if not aa then
x.reject("Rpc",W,X.from,X.source,ba)
return Q(T,X,Y,Z,false,"invalid arguments: "..ba)
end
local ca=m(j(U,X,...))
if ca[1]and ca.n==2 and f(ca[2])=="table"and l(ca[2])==z.PromiseMT then
ca=m(j(b.await,ca[2]))
end
if not ca[1]then return Q(T,X,Y,Z,false,S(T,ca[2]))end
return Q(T,X,Y,Z,true,o(ca,2,ca.n))
end)
return function()
if not T.handled then return end
T.handled=false
X()
end
end
local function T(U,V,W,...)
local X,Y=U.check(h("#",...),...)
if not X then i(("%s:%s: %s"):format(g(U),V,Y),3)end
M(U.from)
J=J+1
local Z=J
local aa=A()
I[Z]={p=aa,name=U.name,target=W,returns=U.returns}
local ba=U.timeout
v(ba,function()
if I[Z]then
I[Z]=nil
D(aa,E("TimeoutError",("%s: no response after %d ms"):format(U.name,ba),{timeout=ba}))
end
end)
local ca="__fxrpc:"..U.name
if U.from=="client"then s(ca,F,Z,...)
elseif U.from=="server"then t(ca,W,F,Z,...)
else q(ca,F,Z,...)end
return aa
end
function N.callAsync(U,...)
if U.from=="server"then i(g(U)..":callAsync: a server -> client RPC is called with callOnAsync(player, ...)",2)end
if U.from=="client"and e then i(g(U)..":callAsync: a client -> server RPC is called from the client",2)end
return T(U,"callAsync",nil,...)
end
function N.callOnAsync(U,V,...)
if U.from~="server"or not e then i(g(U)..":callOnAsync: only for an RPC from 'server', on the server",2)end
local W=x.targetId(V)
if f(W)~="number"then i(g(U)..":callOnAsync: invalid target "..g(V),2)end
return T(U,"callOnAsync",W,...)
end
k(H,{
__call=function(U,V,W)
if f(V)~="string"or V==""or#V>128 then
i("fx.Rpc: name must be a non-empty string of at most 128 characters",2)
end
W=W or{}
local X=x.new("__fxrpc:"..g(V),{from=W.from,rate=W.rate,args={"string:128","integer:1..","..."}},"Rpc",g(V))
return k({
name=V,from=X.from,request=X,
check=x.compileArgs(W.args or{"..."},"Rpc",V,2),
returns=W.returns and x.compileArgs(W.returns,"Rpc",V,2)or nil,
timeout=W.timeout or G,
},O)
end,
__tostring=function()return"fx.Rpc"end,
})
return H]],
["shared/schema.lua"]=[[
local a=...
local d=a.rt
local e,f,g,h,j,l,m,p,q,r=
type,tostring,tonumber,select,error,pairs,next,getmetatable,setmetatable,math.type
local u=table.concat
local y={}
local z={}
local function A(B)
local C=e(B)
if C=="table"then
local D=p(B)
return D and D.__name or"table"
end
if C=="string"then return("string(%d)"):format(#B)end
return C
end
local function B(C,D)
if C==nil or C==""then return nil,nil end
local E=C:find("..",1,true)
if not E then
local F=g(C)
if not F then j(("fx.Schema: invalid bound '%s' in '%s'"):format(C,D),4)end
return nil,F
end
local F,G=C:sub(1,E-1),C:sub(E+2)
local H,I=g(F),g(G)
if(F~=""and not H)or(G~=""and not I)then j(("fx.Schema: invalid bounds '%s' in '%s'"):format(C,D),4)end
return H,I
end
local function C(D,E,F,G)
if not E and not F then return D end
return function(H)
local I,J,K=D(H)
if not I then return false,J,K end
local L=e(H)=="string"and#H or e(H)=="table"and(function()local L=0 for M in m,H do L=L+1 end return L end)()or H
if E and L<E then return false,("%s below %s (%s)"):format(G,f(E),f(L)),true end
if F and L>F then return false,("%s above %s (%s)"):format(G,f(F),f(L)),true end
return true
end
end
local function D(E)return function(F)return e(F)==E,"expected "..E end end
local E=math.huge
local F={
any=function(F)return F~=nil,"expected a value"end,
boolean=function(F)return e(F)=="boolean","expected boolean"end,
number=function(F)return e(F)=="number"and F==F and F>-E and F<E,"expected number"end,
integer=function(F)return r(F)=="integer","expected integer"end,
string=function(F)return e(F)=="string","expected string"end,
table=function(F)return e(F)=="table","expected table"end,
["function"]=function(F)
if e(F)=="function"then return true end
local G=e(F)=="table"and p(F)
return G and G.__call~=nil or false,"expected function"
end,
vector2=D("vector2"),vector3=D("vector3"),vector4=D("vector4"),quat=D("quat"),
}
F.bool=F.boolean
local function G(H)
local I
return function(J)
if not I then
local K=d.msgpack.types[H]
if K then
I=function(L)return K.is(L)end
else
local L=d.typeOf(H)
if not L or L.kind=="module"then j(("fx.Schema: unknown type '%s'"):format(H),0)end
if L.kind~="entity"and L.kind~="player"then
j(("fx.Schema: %s values travel as integers: use 'integer'"):format(H),0)
end
if L.kind=="player"and a.isServer then
I=function(M)return d.instanceOf(M,H)and M.exists==true end
else
I=function(M)return d.instanceOf(M,H)end
end
end
end
return I(J),"expected "..H
end
end
local H
local function I(J,K)
local L,M=J:match("^([%a_][%w_]*)(.*)$")
if not L then j(("fx.Schema: invalid spec '%s'"):format(K),3)end
local N=M:sub(1,2)=="[]"
if N then M=M:sub(3)end
local O
if M~=""then
if M:sub(1,1)~=":"then j(("fx.Schema: invalid spec '%s'"):format(K),3)end
O=M:sub(2)
end
local P,Q=B(O,K)
local R=F[L]or G(L)
if N then
return y.array(R,{min=P,max=Q})[z]
end
if(P or Q)and not(L=="string"or L=="number"or L=="integer"or L=="table")then
j(("fx.Schema: bounds are not supported on '%s' ('%s')"):format(L,K),3)
end
local S=L=="string"and"length"or L=="table"and"size"or"value"
return C(R,P,Q,S)
end
local function J(K)
local L=K:sub(-1)=="?"
local M=L and K:sub(1,-2)or K
local N={}
for O in M:gmatch("[^|]+")do N[#N+1]=I(O:match("^%s*(.-)%s*$"),K)end
if#N==0 then j(("fx.Schema: empty spec '%s'"):format(K),3)end
local O
if#N==1 then
O=N[1]
else
O=function(P)
local Q
for R=1,#N do
local S,U=N[R](P)
if S then return true end
Q=Q and(Q.." or "..(U):gsub("^expected ",""))or U
end
return false,Q
end
end
if L then
return function(P)if P==nil then return true end return O(P)end
end
return O
end
local function K(L,M,N)
if M then return L end
return("%s, got %s"):format(L,A(N))
end
local function L(M,N)
local O={}
for P,Q in l(M)do O[P]=H(Q)end
return function(P)
if e(P)~="table"then return false,"expected table"end
for Q,R in l(O)do
local S,U,V=R(P[Q])
if not S then return false,("field '%s': %s"):format(f(Q),K(U,V,P[Q])),true end
end
if N then
for Q in m,P do
if O[Q]==nil then return false,("unexpected field '%s'"):format(f(Q))end
end
end
return true
end
end
H=function(M)
local N=e(M)
if N=="string"then return J(M)end
if N=="function"then return M end
if N=="table"then
local O=M[z]
if O then return O end
if M[1]~=nil then
j(("fx.Schema: { %q, ... } is a table shape with field 1, not a list of choices: "
.."write the spec without braces (\"A|B\"), or use fx.Schema.array / fx.Schema.table{ fields = ... }")
:format(f(M[1])),3)
end
return L(M,false)
end
j("fx.Schema: invalid spec ("..N..")",3)
end
local function M(N,O)
if O and O.optional then
local P=N
N=function(Q)if Q==nil then return true end return P(Q)end
end
return q({[z]=N},{__name="fx.Schema.Spec"})
end
function y.integer(N)N=N or{};return M(C(F.integer,N.min,N.max,"value"),N)end
function y.number(N)N=N or{};return M(C(F.number,N.min,N.max,"value"),N)end
function y.boolean(N)return M(F.boolean,N)end
function y.any(N)return M(F.any,N)end
function y.string(N)
N=N or{}
local O=C(F.string,N.min,N.max,"length")
if N.pattern then
local P,Q=O,N.pattern
O=function(R)
local S,U,V=P(R)
if not S then return false,U,V end
if not R:find(Q)then return false,"does not match "..Q end
return true
end
end
return M(O,N)
end
function y.table(N)
N=N or{}
local O=N.fields and L(N.fields,N.strict)or F.table
return M(C(O,N.min,N.max,"size"),N)
end
function y.array(N,O)
O=O or{}
local P=H(N)
local Q,R=O.min,O.max
return M(function(S)
if e(S)~="table"then return false,"expected array"end
local U,V=0,0
for W in m,S do
if r(W)~="integer"or W<1 then return false,"expected array (key "..f(W)..")"end
U=U+1
if W>V then V=W end
end
if V~=U then return false,"expected array (holes)"end
if Q and U<Q then return false,("size below %d (%d)"):format(Q,U)end
if R and U>R then return false,("size above %d (%d)"):format(R,U)end
for W=1,U do
local X,Y,Z=P(S[W])
if not X then return false,("item %d: %s"):format(W,K(Y,Z,S[W])),true end
end
return true
end,O)
end
function y.oneOf(...)
local N={}
local O={}
for P=1,h("#",...)do local Q=h(P,...);N[Q]=true;O[P]=f(Q)end
local P="expected one of "..u(O,", ")
return M(function(Q)return Q~=nil and N[Q]==true,P end)
end
function y.optional(N)
local O=H(N)
return M(function(P)if P==nil then return true end return O(P)end)
end
function y.custom(N)return M(N)end
local function N(O)
return function(P)
local Q,R=O(P)
if Q then return true end
return false,R
end
end
function y.compile(O)return N(H(O))end
function y.check(O,P)
local Q,R=H(O)(P)
if Q then return true end
return false,R
end
function y.args(O)
local P={}
local Q,R=#O,false
if O[Q]=="..."then R=true;Q=Q-1 end
for S=1,Q do P[S]=H(O[S])end
return function(S,...)
if S>Q and not R then return false,("expected at most %d arguments, got %d"):format(Q,S)end
for U=1,Q do
local V=h(U,...)
local W,X,Y=P[U](V)
if not W then return false,("argument #%d: %s"):format(U,K(X,Y,V))end
end
return true
end
end
return y]],
["shared/states.lua"]=[[
local a=...
local b,c=a.rt,a.config
local d,e,f=a.NativeEntity,a.NativePlayer,a.NativeGlobalState
local g=b.isServer
local j=b.Promise
local l=j._internal
local n,o,q,r=setmetatable,type,tostring,error
local s=msgpack.pack
local t,u=GetStateBagValue,SetStateBagValue
local w,x=AddStateBagChangeHandler,RemoveStateBagChangeHandler
local y,z=NetworkGetEntityIsNetworked,NetworkGetNetworkIdFromEntity
local A=NetworkGetEntityOwner
local B=PlayerId
local C,D,E,F=Citizen.SetTimeout,Citizen.ClearTimeout,Citizen.Wait,Citizen.Trace
local G=n({},{__mode="k"})
local H={}
local I={
__name="fx.StateBag",
__index=function(I,J)
local K=H[J]
if K~=nil then return K end
return G[I].native[J]
end,
__newindex=function(I,J,K)
G[I].native[J]=K
end,
__tostring=function(I)return"StateBag("..q(G[I].bag)..")"end,
}
local function J(K,L)
if g or not L or not c.debug then return end
local M
if K.kind=="global"then M="the global bag is server-only"
elseif K.kind=="player"and not K.isLocal then M="only the player itself can write its player bag"
elseif K.kind=="entity"then
local N=A(K.handle)
if N~=B()then M="this client is not the network owner of the entity"end
end
if M then
F(("^3[fx] states:set on %s will be rejected by the server: %s^7\n"):format(K.bag,M))
end
end
function H.set(K,L,M,N)
local O=G[K]
J(O,N)
local Q=s(M)
u(O.bag,L,Q,#Q,not not N)
return K
end
function H.get(K,L)
return t(G[K].bag,L)
end
function H.on(K,L,M,N)
local O=G[K].bag
local Q=N~=nil and N.deferred==true
local R=true
local T=w(L,O,function(T,U,V,W,X)
local Y=t(T,U)
if Q then
E(0)
if not R then return end
end
M(V,Y,X)
end)
return function()
if not R then return end
R=false
x(T)
end
end
function H.waitForAsync(K,L,M,N)
local O=G[K].bag
local Q=N or function(Q)return Q~=nil end
local R=t(O,L)
if Q(R)then return j.resolve(R)end
local T=l.newPending()
local U
local V
U=K:on(L,function(W)
if Q(W)then
U()
if V then D(V)end
l.resolve(T,W)
end
end)
local W=M or b.DEFAULT_TIMEOUT
V=C(W,function()
U()
l.reject(T,l.newError("TimeoutError",("states:waitForAsync('%s') on %s: timed out after %d ms"):format(q(L),O,W)))
end)
return T
end
local function K(L)
if g or y(L)then
return"entity:"..z(L)
end
return"localEntity:"..L
end
local L={}
function L.entity(M)
local N=M.handle
if c.debug and not g and not y(N)then
r(("%s.states: entity is not networked (state bags require a networked entity)"):format(q(M)),3)
end
local O=d(N).state
local Q=n({},I)
G[Q]={bag=K(N),native=O,kind="entity",handle=N}
return Q
end
function L.player(M,N)
local O=e(N and-1 or M).state
local Q=n({},I)
G[Q]={bag="player:"..q(M),native=O,kind="player",isLocal=N}
return Q
end
function L.global()
local M=n({},I)
G[M]={bag="global",native=f,kind="global"}
return M
end
L.methods=H
L.entityBagName=K
function L.bagOf(M)return G[M].bag end
return L]],
["shared/enums/AimFlag.lua"]=[[
local a,b=error,tostring
return setmetatable({
AimAtFocusLocation=0,
AimAtGoToLocation=1,
},{
__index=function(c,d)a("fx.Enum.AimFlag has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AimFlag is read-only",2)end,
})]],
["shared/enums/AnchorPoints.lua"]=[[
local a,b=error,tostring
return setmetatable({
ANCHOR_HEAD=0,
ANCHOR_EYES=1,
ANCHOR_EARS=2,
ANCHOR_MOUTH=3,
ANCHOR_LEFT_HAND=4,
ANCHOR_RIGHT_HAND=5,
ANCHOR_LEFT_WRIST=6,
ANCHOR_RIGHT_WRIST=7,
ANCHOR_HIP=8,
ANCHOR_LEFT_FOOT=9,
ANCHOR_RIGHT_FOOT=10,
ANCHOR_PH_L_HAND=11,
ANCHOR_PH_R_HAND=12,
NUM_ANCHORS=13,
},{
__index=function(c,d)a("fx.Enum.AnchorPoints has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AnchorPoints is read-only",2)end,
})]],
["shared/enums/ApplyForceTypes.lua"]=[[
local a,b=error,tostring
return setmetatable({
APPLY_TYPE_FORCE=0,
APPLY_TYPE_IMPULSE=1,
APPLY_TYPE_EXTERNAL_FORCE=2,
APPLY_TYPE_EXTERNAL_IMPULSE=3,
APPLY_TYPE_TORQUE=4,
APPLY_TYPE_ANGULAR_IMPULSE=5,
},{
__index=function(c,d)a("fx.Enum.ApplyForceTypes has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.ApplyForceTypes is read-only",2)end,
})]],
["shared/enums/AudAnimalMood.lua"]=[[
local a,b=error,tostring
return setmetatable({
AUD_ANIMAL_MOOD_ANGRY=0,
AUD_ANIMAL_MOOD_PLAYFUL=1,
AUD_ANIMAL_MOOD_NUM_MOODS=2,
},{
__index=function(c,d)a("fx.Enum.AudAnimalMood has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AudAnimalMood is read-only",2)end,
})]],
["shared/enums/AudAnimalType.lua"]=[[
local a,b=error,tostring
return setmetatable({
AUD_ANIMAL_NONE=-1,
AUD_ANIMAL_BOAR=0,
AUD_ANIMAL_CHICKEN=1,
AUD_ANIMAL_DOG=2,
AUD_ANIMAL_DOG_ROTTWEILER=3,
AUD_ANIMAL_HORSE=4,
AUD_NUM_ANIMALS=5,
},{
__index=function(c,d)a("fx.Enum.AudAnimalType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AudAnimalType is read-only",2)end,
})]],
["shared/enums/AudContextBlockTarget.lua"]=[[
local a,b=error,tostring
return setmetatable({
AUD_CONTEXT_BLOCK_PLAYER=0,
AUD_CONTEXT_BLOCK_NPCS=1,
AUD_CONTEXT_BLOCK_BUDDYS=2,
AUD_CONTEXT_BLOCK_EVERYONE=3,
AUD_CONTEXT_BLOCK_TARGETS_TOTAL=4,
},{
__index=function(c,d)a("fx.Enum.AudContextBlockTarget has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AudContextBlockTarget is read-only",2)end,
})]],
["shared/enums/AudDamageReason.lua"]=[[
local a,b=error,tostring
return setmetatable({
AUD_DAMAGE_REASON_DEFAULT=0,
AUD_DAMAGE_REASON_FALLING=1,
AUD_DAMAGE_REASON_SUPER_FALLING=2,
AUD_DAMAGE_REASON_SCREAM_PANIC=3,
AUD_DAMAGE_REASON_SCREAM_PANIC_SHORT=4,
AUD_DAMAGE_REASON_SCREAM_SCARED=5,
AUD_DAMAGE_REASON_SCREAM_SHOCKED=6,
AUD_DAMAGE_REASON_SCREAM_TERROR=7,
AUD_DAMAGE_REASON_ON_FIRE=8,
AUD_DAMAGE_REASON_DROWNING=9,
AUD_DAMAGE_REASON_SURFACE_DROWNING=10,
AUD_DAMAGE_REASON_INHALE=11,
AUD_DAMAGE_REASON_EXHALE=12,
AUD_DAMAGE_REASON_POST_FALL_GRUNT=13,
AUD_DAMAGE_REASON_ENTERING_RAGDOLL_DEATH=14,
AUD_DAMAGE_REASON_EXPLOSION=15,
AUD_DAMAGE_REASON_MELEE=16,
AUD_DAMAGE_REASON_SHOVE=17,
AUD_DAMAGE_REASON_WHEEZE=18,
AUD_DAMAGE_REASON_COUGH=19,
AUD_DAMAGE_REASON_TAZER=20,
AUD_DAMAGE_REASON_EXHAUSTION=21,
AUD_DAMAGE_REASON_CLIMB_LARGE=22,
AUD_DAMAGE_REASON_CLIMB_SMALL=23,
AUD_DAMAGE_REASON_JUMP=24,
AUD_DAMAGE_REASON_COWER=25,
AUD_DAMAGE_REASON_WHIMPER=26,
AUD_DAMAGE_REASON_DYING_MOAN=27,
AUD_DAMAGE_REASON_CYCLING_EXHALE=28,
AUD_DAMAGE_REASON_PAIN_RAPIDS=29,
AUD_DAMAGE_REASON_SNEEZE=30,
AUD_DAMAGE_REASON_MELEE_SMALL_GRUNT=31,
AUD_DAMAGE_REASON_MELEE_LARGE_GRUNT=32,
AUD_DAMAGE_REASON_POST_FALL_GRUNT_LOW=33,
},{
__index=function(c,d)a("fx.Enum.AudDamageReason has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AudDamageReason is read-only",2)end,
})]],
["shared/enums/AudSpecialEffectMode.lua"]=[[
local a,b=error,tostring
return setmetatable({
kSpecialEffectModeNormal=0,
kSpecialEffectModeUnderwater=1,
kSpecialEffectModeStoned=2,
kSpecialEffectModePauseMenu=3,
kSpecialEffectModeSlowMotion=4,
kSpecialEffectModeDrunkStage01=5,
kSpecialEffectModeDrunkStage02=6,
kSpecialEffectModeDrunkStage03=7,
NUM_AUDSPECIALEFFECTMODE=8,
},{
__index=function(c,d)a("fx.Enum.AudSpecialEffectMode has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AudSpecialEffectMode is read-only",2)end,
})]],
["shared/enums/AudVehiclePriority.lua"]=[[
local a,b=error,tostring
return setmetatable({
AUDIO_VEHICLE_PRIORITY_NORMAL=0,
AUDIO_VEHICLE_PRIORITY_MEDIUM=1,
AUDIO_VEHICLE_PRIORITY_MAX=2,
AUDIO_VEHICLE_PRIORITY_HIGH=3,
},{
__index=function(c,d)a("fx.Enum.AudVehiclePriority has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.AudVehiclePriority is read-only",2)end,
})]],
["shared/enums/Audibility.lua"]=[[
local a,b=error,tostring
return setmetatable({
AUD_AUDIBILITY_NORMAL=0,
AUD_AUDIBILITY_CLEAR=1,
AUD_AUDIBILITY_CRITICAL=2,
AUD_AUDIBILITY_LEAD_IN=3,
},{
__index=function(c,d)a("fx.Enum.Audibility has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.Audibility is read-only",2)end,
})]],
["shared/enums/BlipColor.lua"]=[[
local a,b=error,tostring
return setmetatable({
White=0,
Red=1,
Green=2,
Blue=3,
White_4=4,
Yellow=5,
LightRed=6,
Violet=7,
Pink=8,
LightOrange=9,
LightBrown=10,
LightGreen=11,
LightBlue=12,
LightPurple=13,
DarkPurple=14,
Cyan=15,
LightYellow=16,
Orange=17,
LightBlue_18=18,
DarkPink=19,
DarkYellow=20,
DarkOrange=21,
LightGray=22,
LightPink=23,
LemonGreen=24,
ForestGreen=25,
ElectricBlue=26,
BrightPurple=27,
DarkYellow_28=28,
DarkBlue=29,
DarkCyan=30,
LightBrown_31=31,
LightBlue_32=32,
LightYellow_33=33,
LightPink_34=34,
LightRed_35=35,
Beige=36,
White_37=37,
Blue_38=38,
LightGray_39=39,
DarkGray=40,
PinkRed=41,
Blue_42=42,
LightGreen_43=43,
LightOrange_44=44,
White_45=45,
Gold=46,
Orange_47=47,
BrilliantRose=48,
Red_49=49,
MediumPurple=50,
Salmon=51,
DarkGreen=52,
BlizzardBlue=53,
OracleBlue=54,
Silver=55,
Brown=56,
Blue_57=57,
EastBay=58,
Red_59=59,
YellowOrange=60,
MulberryPink=61,
AltoGray=62,
JellyBeanBlue=63,
DarkOrange_64=64,
Mamba=65,
YellowOrange_66=66,
Blue_67=67,
Blue_68=68,
Green_69=69,
YellowOrange_70=70,
YellowOrange_71=71,
TransparentBlack=72,
YellowOrange_73=73,
Blue_74=74,
Red_75=75,
DeepRed=76,
Blue_77=77,
OracleBlue_78=78,
TransparentRed=79,
TransparentBlue=80,
Orange_81=81,
LightGreen_82=82,
Purple=83,
Blue_84=84,
TransparentBlack_85=85,
},{
__index=function(c,d)a("fx.Enum.BlipColor has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.BlipColor is read-only",2)end,
})]],
["shared/enums/BlipSprite.lua"]=[[
local a,b=error,tostring
return setmetatable({
radar_higher=0,
radar_level=1,
radar_lower=2,
radar_police_ped=3,
radar_wanted_radius=4,
radar_area_blip=5,
radar_centre=6,
radar_north=7,
radar_waypoint=8,
radar_radius_blip=9,
radar_radius_outline_blip=10,
radar_weapon_higher=11,
radar_weapon_lower=12,
radar_higher_ai=13,
radar_lower_ai=14,
radar_police_heli_spin=15,
radar_police_plane_move=16,
radar_numbered_1=17,
radar_numbered_2=18,
radar_numbered_3=19,
radar_numbered_4=20,
radar_numbered_5=21,
radar_numbered_6=22,
radar_numbered_7=23,
radar_numbered_8=24,
radar_numbered_9=25,
radar_numbered_10=26,
radar_mp_crew=27,
radar_mp_friendlies=28,
radar_empty=29,
radar_empty_30=30,
radar_empty_31=31,
radar_script_objective=32,
radar_empty_33=33,
radar_empty_34=34,
radar_station=35,
radar_cable_car=36,
radar_activities=37,
radar_raceflag=38,
radar_fire=39,
radar_safehouse=40,
radar_police=41,
radar_police_chase=42,
radar_police_heli=43,
radar_bomb_a=44,
radar_bomb_b=45,
radar_bomb_c=46,
radar_snitch=47,
radar_planning_locations=48,
radar_crim_arrest=49,
radar_crim_carsteal=50,
radar_crim_drugs=51,
radar_crim_holdups=52,
radar_crim_pimping=53,
radar_crim_player=54,
radar_fence=55,
radar_cop_patrol=56,
radar_cop_player=57,
radar_crim_wanted=58,
radar_heist=59,
radar_police_station=60,
radar_hospital=61,
radar_assassins_mark=62,
radar_elevator=63,
radar_helicopter=64,
radar_joyriders=65,
radar_random_character=66,
radar_security_van=67,
radar_tow_truck=68,
radar_drive_thru=69,
radar_illegal_parking=70,
radar_barber=71,
radar_car_mod_shop=72,
radar_clothes_store=73,
radar_gym=74,
radar_tattoo=75,
radar_armenian_family=76,
radar_lester_family=77,
radar_michael_family=78,
radar_trevor_family=79,
radar_jewelry_heist=80,
radar_drag_race=81,
radar_drag_race_finish=82,
radar_car_carrier=83,
radar_rampage=84,
radar_vinewood_tours=85,
radar_lamar_family=86,
radar_taco_van=87,
radar_franklin_family=88,
radar_chinese_strand=89,
radar_flight_school=90,
radar_eye_sky=91,
radar_air_hockey=92,
radar_bar=93,
radar_base_jump=94,
radar_basketball=95,
radar_biolab_heist=96,
radar_bowling=97,
radar_burger_shot=98,
radar_cabaret_club=99,
radar_car_wash=100,
radar_cluckin_bell=101,
radar_comedy_club=102,
radar_darts=103,
radar_docks_heist=104,
radar_fbi_heist=105,
radar_fbi_officers_strand=106,
radar_finale_bank_heist=107,
radar_financier_strand=108,
radar_golf=109,
radar_gun_shop=110,
radar_internet_cafe=111,
radar_michael_family_exile=112,
radar_nice_house_heist=113,
radar_random_female=114,
radar_random_male=115,
radar_repo=116,
radar_restaurant=117,
radar_rural_bank_heist=118,
radar_shooting_range=119,
radar_solomon_strand=120,
radar_strip_club=121,
radar_tennis=122,
radar_trevor_family_exile=123,
radar_michael_trevor_family=124,
radar_vehicle_spawn=125,
radar_triathlon=126,
radar_off_road_racing=127,
radar_gang_cops=128,
radar_gang_mexicans=129,
radar_gang_bikers=130,
radar_gang_families=131,
radar_gang_professionals=132,
radar_snitch_red=133,
radar_crim_cuff_keys=134,
radar_cinema=135,
radar_music_venue=136,
radar_police_station_blue=137,
radar_airport=138,
radar_crim_saved_vehicle=139,
radar_weed_stash=140,
radar_hunting=141,
radar_pool=142,
radar_objective_blue=143,
radar_objective_green=144,
radar_objective_red=145,
radar_objective_yellow=146,
radar_arms_dealing=147,
radar_mp_friend=148,
radar_celebrity_theft=149,
radar_weapon_assault_rifle=150,
radar_weapon_bat=151,
radar_weapon_grenade=152,
radar_weapon_health=153,
radar_weapon_knife=154,
radar_weapon_molotov=155,
radar_weapon_pistol=156,
radar_weapon_rocket=157,
radar_weapon_shotgun=158,
radar_weapon_smg=159,
radar_weapon_sniper=160,
radar_mp_noise=161,
radar_poi=162,
radar_passive=163,
radar_usingmenu=164,
radar_friend_franklin_p=165,
radar_friend_franklin_x=166,
radar_friend_michael_p=167,
radar_friend_michael_x=168,
radar_friend_trevor_p=169,
radar_friend_trevor_x=170,
radar_gang_cops_partner=171,
radar_friend_lamar=172,
radar_weapon_minigun=173,
radar_weapon_grenadeLauncher=174,
radar_weapon_armour=175,
radar_property_takeover=176,
radar_gang_mexicans_highlight=177,
radar_gang_bikers_highlight=178,
radar_triathlon_cycling=179,
radar_triathlon_swimming=180,
radar_property_takeover_bikers=181,
radar_property_takeover_cops=182,
radar_property_takeover_vagos=183,
radar_camera=184,
radar_centre_red=185,
radar_handcuff_keys_bikers=186,
radar_handcuff_keys_vagos=187,
radar_handcuffs_closed_bikers=188,
radar_handcuffs_closed_vagos=189,
radar_handcuffs_open_bikers=190,
radar_handcuffs_open_vagos=191,
radar_camera_badger=192,
radar_camera_facade=193,
radar_camera_ifruit=194,
radar_crim_arrest_bikers=195,
radar_crim_arrest_vagos=196,
radar_yoga=197,
radar_taxi=198,
radar_numbered_11=199,
radar_numbered_12=200,
radar_numbered_13=201,
radar_numbered_14=202,
radar_numbered_15=203,
radar_numbered_16=204,
radar_shrink=205,
radar_epsilon=206,
radar_financier_strand_grey=207,
radar_trevor_family_grey=208,
radar_trevor_family_red=209,
radar_franklin_family_grey=210,
radar_franklin_family_blue=211,
radar_franklin_a=212,
radar_franklin_b=213,
radar_franklin_c=214,
radar_numbered_red_1=215,
radar_numbered_red_2=216,
radar_numbered_red_3=217,
radar_numbered_red_4=218,
radar_numbered_red_5=219,
radar_numbered_red_6=220,
radar_numbered_red_7=221,
radar_numbered_red_8=222,
radar_numbered_red_9=223,
radar_numbered_red_10=224,
radar_gang_vehicle=225,
radar_gang_vehicle_bikers=226,
radar_gang_vehicle_cops=227,
radar_gang_vehicle_vagos=228,
radar_guncar=229,
radar_driving_bikers=230,
radar_driving_cops=231,
radar_driving_vagos=232,
radar_gang_cops_highlight=233,
radar_shield_bikers=234,
radar_shield_cops=235,
radar_shield_vagos=236,
radar_custody_bikers=237,
radar_custody_vagos=238,
radar_gang_wanted_bikers=239,
radar_gang_wanted_bikers_1=240,
radar_gang_wanted_bikers_2=241,
radar_gang_wanted_bikers_3=242,
radar_gang_wanted_bikers_4=243,
radar_gang_wanted_bikers_5=244,
radar_gang_wanted_vagos=245,
radar_gang_wanted_vagos_1=246,
radar_gang_wanted_vagos_2=247,
radar_gang_wanted_vagos_3=248,
radar_gang_wanted_vagos_4=249,
radar_gang_wanted_vagos_5=250,
radar_arms_dealing_air=251,
radar_playerstate_arrested=252,
radar_playerstate_custody=253,
radar_playerstate_driving=254,
radar_playerstate_keyholder=255,
radar_playerstate_partner=256,
radar_gang_wanted_1=257,
radar_gang_wanted_2=258,
radar_gang_wanted_3=259,
radar_gang_wanted_4=260,
radar_gang_wanted_5=261,
radar_ztype=262,
radar_stinger=263,
radar_packer=264,
radar_monroe=265,
radar_fairground=266,
radar_property=267,
radar_gang_highlight=268,
radar_altruist=269,
radar_ai=270,
radar_on_mission=271,
radar_cash_pickup=272,
radar_chop=273,
radar_dead=274,
radar_territory_locked=275,
radar_cash_lost=276,
radar_cash_vagos=277,
radar_cash_cops=278,
radar_hooker=279,
radar_friend=280,
radar_mission_2to4=281,
radar_mission_2to8=282,
radar_mission_2to12=283,
radar_mission_2to16=284,
radar_custody_dropoff=285,
radar_onmission_cops=286,
radar_onmission_lost=287,
radar_onmission_vagos=288,
radar_crim_carsteal_cops=289,
radar_crim_carsteal_bikers=290,
radar_crim_carsteal_vagos=291,
radar_band_strand=292,
radar_simeon_family=293,
radar_mission_1=294,
radar_mission_2=295,
radar_friend_darts=296,
radar_friend_comedyclub=297,
radar_friend_cinema=298,
radar_friend_tennis=299,
radar_friend_stripclub=300,
radar_friend_livemusic=301,
radar_friend_golf=302,
radar_bounty_hit=303,
radar_ugc_mission=304,
radar_horde=305,
radar_cratedrop=306,
radar_plane_drop=307,
radar_sub=308,
radar_race=309,
radar_deathmatch=310,
radar_arm_wrestling=311,
radar_mission_1to2=312,
radar_shootingrange_gunshop=313,
radar_race_air=314,
radar_race_land=315,
radar_race_sea=316,
radar_tow=317,
radar_garbage=318,
radar_drill=319,
radar_spikes=320,
radar_firetruck=321,
radar_minigun2=322,
radar_bugstar=323,
radar_submarine=324,
radar_chinook=325,
radar_getaway_car=326,
radar_mission_bikers_1=327,
radar_mission_bikers_1to2=328,
radar_mission_bikers_2=329,
radar_mission_bikers_2to4=330,
radar_mission_bikers_2to8=331,
radar_mission_bikers_2to12=332,
radar_mission_bikers_2to16=333,
radar_mission_cops_1=334,
radar_mission_cops_1to2=335,
radar_mission_cops_2=336,
radar_mission_cops_2to4=337,
radar_mission_cops_2to8=338,
radar_mission_cops_2to12=339,
radar_mission_cops_2to16=340,
radar_mission_vagos_1=341,
radar_mission_vagos_1to2=342,
radar_mission_vagos_2=343,
radar_mission_vagos_2to4=344,
radar_mission_vagos_2to8=345,
radar_mission_vagos_2to12=346,
radar_mission_vagos_2to16=347,
radar_gang_bike=348,
radar_gas_grenade=349,
radar_property_for_sale=350,
radar_gang_attack_package=351,
radar_martin_madrazzo=352,
radar_enemy_heli_spin=353,
radar_boost=354,
radar_devin=355,
radar_dock=356,
radar_garage=357,
radar_golf_flag=358,
radar_hangar=359,
radar_helipad=360,
radar_jerry_can=361,
radar_mask=362,
radar_heist_prep=363,
radar_incapacitated=364,
radar_spawn_point_pickup=365,
radar_boilersuit=366,
radar_completed=367,
radar_rockets=368,
radar_garage_for_sale=369,
radar_helipad_for_sale=370,
radar_dock_for_sale=371,
radar_hangar_for_sale=372,
radar_placeholder_6=373,
radar_business=374,
radar_business_for_sale=375,
radar_race_bike=376,
radar_parachute=377,
radar_team_deathmatch=378,
radar_race_foot=379,
radar_vehicle_deathmatch=380,
radar_barry=381,
radar_dom=382,
radar_maryann=383,
radar_cletus=384,
radar_josh=385,
radar_minute=386,
radar_omega=387,
radar_tonya=388,
radar_paparazzo=389,
radar_aim=390,
radar_cratedrop_background=391,
radar_green_and_net_player1=392,
radar_green_and_net_player2=393,
radar_green_and_net_player3=394,
radar_green_and_friendly=395,
radar_net_player1_and_net_player2=396,
radar_net_player1_and_net_player3=397,
radar_creator=398,
radar_creator_direction=399,
radar_abigail=400,
radar_blimp=401,
radar_repair=402,
radar_testosterone=403,
radar_dinghy=404,
radar_fanatic=405,
radar_invisible=406,
radar_info_icon=407,
radar_capture_the_flag=408,
radar_last_team_standing=409,
radar_boat=410,
radar_capture_the_flag_base=411,
radar_mp_crew_412=412,
radar_capture_the_flag_outline=413,
radar_capture_the_flag_base_nobag=414,
radar_weapon_jerrycan=415,
radar_rp=416,
radar_level_inside=417,
radar_bounty_hit_inside=418,
radar_capture_the_usaflag=419,
radar_capture_the_usaflag_outline=420,
radar_tank=421,
radar_player_heli=422,
radar_player_plane=423,
radar_player_jet=424,
radar_centre_stroke=425,
radar_player_guncar=426,
radar_player_boat=427,
radar_mp_heist=428,
radar_temp_1=429,
radar_temp_2=430,
radar_temp_3=431,
radar_temp_4=432,
radar_temp_5=433,
radar_temp_6=434,
radar_race_stunt=435,
radar_hot_property=436,
radar_urbanwarfare_versus=437,
radar_king_of_the_castle=438,
radar_player_king=439,
radar_dead_drop=440,
radar_penned_in=441,
radar_beast=442,
radar_edge_pointer=443,
radar_edge_crosstheline=444,
radar_mp_lamar=445,
radar_bennys=446,
radar_corner_number_1=447,
radar_corner_number_2=448,
radar_corner_number_3=449,
radar_corner_number_4=450,
radar_corner_number_5=451,
radar_corner_number_6=452,
radar_corner_number_7=453,
radar_corner_number_8=454,
radar_yacht=455,
radar_finders_keepers=456,
radar_assault_package=457,
radar_hunt_the_boss=458,
radar_sightseer=459,
radar_turreted_limo=460,
radar_belly_of_the_beast=461,
radar_yacht_location=462,
radar_pickup_beast=463,
radar_pickup_zoned=464,
radar_pickup_random=465,
radar_pickup_slow_time=466,
radar_pickup_swap=467,
radar_pickup_thermal=468,
radar_pickup_weed=469,
radar_weapon_railgun=470,
radar_seashark=471,
radar_pickup_hidden=472,
radar_warehouse=473,
radar_warehouse_for_sale=474,
radar_office=475,
radar_office_for_sale=476,
radar_truck=477,
radar_contraband=478,
radar_trailer=479,
radar_vip=480,
radar_cargobob=481,
radar_area_outline_blip=482,
radar_pickup_accelerator=483,
radar_pickup_ghost=484,
radar_pickup_detonator=485,
radar_pickup_bomb=486,
radar_pickup_armoured=487,
radar_stunt=488,
radar_weapon_lives=489,
radar_stunt_premium=490,
radar_adversary=491,
radar_biker_clubhouse=492,
radar_biker_caged_in=493,
radar_biker_turf_war=494,
radar_biker_joust=495,
radar_production_weed=496,
radar_production_crack=497,
radar_production_fake_id=498,
radar_production_meth=499,
radar_production_money=500,
radar_package=501,
radar_capture_1=502,
radar_capture_2=503,
radar_capture_3=504,
radar_capture_4=505,
radar_capture_5=506,
radar_capture_6=507,
radar_capture_7=508,
radar_capture_8=509,
radar_capture_9=510,
radar_capture_10=511,
radar_quad=512,
radar_bus=513,
radar_drugs_package=514,
radar_pickup_jump=515,
radar_adversary_4=516,
radar_adversary_8=517,
radar_adversary_10=518,
radar_adversary_12=519,
radar_adversary_16=520,
radar_laptop=521,
radar_pickup_deadline=522,
radar_sports_car=523,
radar_warehouse_vehicle=524,
radar_reg_papers=525,
radar_police_station_dropoff=526,
radar_junkyard=527,
radar_ex_vech_1=528,
radar_ex_vech_2=529,
radar_ex_vech_3=530,
radar_ex_vech_4=531,
radar_ex_vech_5=532,
radar_ex_vech_6=533,
radar_ex_vech_7=534,
radar_target_a=535,
radar_target_b=536,
radar_target_c=537,
radar_target_d=538,
radar_target_e=539,
radar_target_f=540,
radar_target_g=541,
radar_target_h=542,
radar_jugg=543,
radar_pickup_repair=544,
radar_steeringwheel=545,
radar_trophy=546,
radar_pickup_rocket_boost=547,
radar_pickup_homing_rocket=548,
radar_pickup_machinegun=549,
radar_pickup_parachute=550,
radar_pickup_time_5=551,
radar_pickup_time_10=552,
radar_pickup_time_15=553,
radar_pickup_time_20=554,
radar_pickup_time_30=555,
radar_supplies=556,
radar_property_bunker=557,
radar_gr_wvm_1=558,
radar_gr_wvm_2=559,
radar_gr_wvm_3=560,
radar_gr_wvm_4=561,
radar_gr_wvm_5=562,
radar_gr_wvm_6=563,
radar_gr_covert_ops=564,
radar_adversary_bunker=565,
radar_gr_moc_upgrade=566,
radar_gr_w_upgrade=567,
radar_sm_cargo=568,
radar_sm_hangar=569,
radar_tf_checkpoint=570,
radar_race_tf=571,
radar_sm_wp1=572,
radar_sm_wp2=573,
radar_sm_wp3=574,
radar_sm_wp4=575,
radar_sm_wp5=576,
radar_sm_wp6=577,
radar_sm_wp7=578,
radar_sm_wp8=579,
radar_sm_wp9=580,
radar_sm_wp10=581,
radar_sm_wp11=582,
radar_sm_wp12=583,
radar_sm_wp13=584,
radar_sm_wp14=585,
radar_nhp_bag=586,
radar_nhp_chest=587,
radar_nhp_orbit=588,
radar_nhp_veh1=589,
radar_nhp_base=590,
radar_nhp_overlay=591,
radar_nhp_turret=592,
radar_nhp_mg_firewall=593,
radar_nhp_mg_node=594,
radar_nhp_wp1=595,
radar_nhp_wp2=596,
radar_nhp_wp3=597,
radar_nhp_wp4=598,
radar_nhp_wp5=599,
radar_nhp_wp6=600,
radar_nhp_wp7=601,
radar_nhp_wp8=602,
radar_nhp_wp9=603,
radar_nhp_cctv=604,
radar_nhp_starterpack=605,
radar_nhp_turret_console=606,
radar_nhp_mg_mir_rotate=607,
radar_nhp_mg_mir_static=608,
radar_nhp_mg_proxy=609,
radar_acsr_race_target=610,
radar_acsr_race_hotring=611,
radar_acsr_wp1=612,
radar_acsr_wp2=613,
radar_bat_club_property=614,
radar_bat_cargo=615,
radar_bat_truck=616,
radar_bat_hack_jewel=617,
radar_bat_hack_gold=618,
radar_bat_keypad=619,
radar_bat_hack_target=620,
radar_pickup_dtb_health=621,
radar_pickup_dtb_blast_increase=622,
radar_pickup_dtb_blast_decrease=623,
radar_pickup_dtb_bomb_increase=624,
radar_pickup_dtb_bomb_decrease=625,
radar_bat_rival_club=626,
radar_bat_drone=627,
radar_bat_cash_reg=628,
radar_cctv=629,
radar_bat_assassinate=630,
radar_bat_pbus=631,
radar_bat_wp1=632,
radar_bat_wp2=633,
radar_bat_wp3=634,
radar_bat_wp4=635,
radar_bat_wp5=636,
radar_bat_wp6=637,
radar_blimp_2=638,
radar_oppressor_2=639,
radar_bat_wp7=640,
radar_arena_series=641,
radar_arena_premium=642,
radar_arena_workshop=643,
radar_race_wars=644,
radar_arena_turret=645,
radar_arena_rc_car=646,
radar_arena_rc_workshop=647,
radar_arena_trap_fire=648,
radar_arena_trap_flip=649,
radar_arena_trap_sea=650,
radar_arena_trap_turn=651,
radar_arena_trap_pit=652,
radar_arena_trap_mine=653,
radar_arena_trap_bomb=654,
radar_arena_trap_wall=655,
radar_arena_trap_brd=656,
radar_arena_trap_sbrd=657,
radar_arena_bruiser=658,
radar_arena_brutus=659,
radar_arena_cerberus=660,
radar_arena_deathbike=661,
radar_arena_dominator=662,
radar_arena_impaler=663,
radar_arena_imperator=664,
radar_arena_issi=665,
radar_arena_sasquatch=666,
radar_arena_scarab=667,
radar_arena_slamvan=668,
radar_arena_zr380=669,
radar_ap=670,
radar_comic_store=671,
radar_cop_car=672,
radar_rc_time_trials=673,
radar_king_of_the_hill=674,
radar_king_of_the_hill_teams=675,
radar_rucksack=676,
radar_shipping_container=677,
radar_agatha=678,
radar_casino=679,
radar_casino_table_games=680,
radar_casino_wheel=681,
radar_casino_concierge=682,
radar_casino_chips=683,
radar_casino_horse_racing=684,
radar_adversary_featured=685,
radar_roulette_1=686,
radar_roulette_2=687,
radar_roulette_3=688,
radar_roulette_4=689,
radar_roulette_5=690,
radar_roulette_6=691,
radar_roulette_7=692,
radar_roulette_8=693,
radar_roulette_9=694,
radar_roulette_10=695,
radar_roulette_11=696,
radar_roulette_12=697,
radar_roulette_13=698,
radar_roulette_14=699,
radar_roulette_15=700,
radar_roulette_16=701,
radar_roulette_17=702,
radar_roulette_18=703,
radar_roulette_19=704,
radar_roulette_20=705,
radar_roulette_21=706,
radar_roulette_22=707,
radar_roulette_23=708,
radar_roulette_24=709,
radar_roulette_25=710,
radar_roulette_26=711,
radar_roulette_27=712,
radar_roulette_28=713,
radar_roulette_29=714,
radar_roulette_30=715,
radar_roulette_31=716,
radar_roulette_32=717,
radar_roulette_33=718,
radar_roulette_34=719,
radar_roulette_35=720,
radar_roulette_36=721,
radar_roulette_0=722,
radar_roulette_00=723,
radar_limo=724,
radar_weapon_alien=725,
radar_race_open_wheel=726,
radar_rappel=727,
radar_swap_car=728,
radar_scuba_gear=729,
radar_cpanel_1=730,
radar_cpanel_2=731,
radar_cpanel_3=732,
radar_cpanel_4=733,
radar_snow_truck=734,
radar_buggy_1=735,
radar_buggy_2=736,
radar_zhaba=737,
radar_gerald=738,
radar_ron=739,
radar_arcade=740,
radar_drone_controls=741,
radar_rc_tank=742,
radar_stairs=743,
radar_camera_2=744,
radar_winky=745,
radar_mini_sub=746,
radar_kart_retro=747,
radar_kart_modern=748,
radar_military_quad=749,
radar_military_truck=750,
radar_ship_wheel=751,
radar_ufo=752,
radar_seasparrow2=753,
radar_dinghy2=754,
radar_patrol_boat=755,
radar_retro_sports_car=756,
radar_squadee=757,
radar_folding_wing_jet=758,
radar_valkyrie2=759,
radar_sub2=760,
radar_bolt_cutters=761,
radar_rappel_gear=762,
radar_keycard=763,
radar_password=764,
radar_island_heist_prep=765,
radar_island_party=766,
radar_control_tower=767,
radar_underwater_gate=768,
radar_power_switch=769,
radar_compound_gate=770,
radar_rappel_point=771,
radar_keypad=772,
radar_sub_controls=773,
radar_sub_periscope=774,
radar_sub_missile=775,
radar_painting=776,
radar_car_meet=777,
radar_car_test_area=778,
radar_auto_shop_property=779,
radar_docks_export=780,
radar_prize_car=781,
radar_test_car=782,
radar_car_robbery_board=783,
radar_car_robbery_prep=784,
radar_street_race_series=785,
radar_pursuit_series=786,
radar_car_meet_organiser=787,
radar_securoserv=788,
radar_bounty_collectibles=789,
radar_movie_collectibles=790,
radar_trailer_ramp=791,
radar_race_organiser=792,
radar_chalkboard_list=793,
radar_export_vehicle=794,
radar_train=795,
radar_heist_diamond=796,
radar_heist_doomsday=797,
radar_heist_island=798,
radar_slamvan2=799,
radar_crusader=800,
radar_construction_outfit=801,
radar_overlay_jammed=802,
radar_heist_island_unavailable=803,
radar_heist_diamond_unavailable=804,
radar_heist_doomsday_unavailable=805,
radar_placeholder_7=806,
radar_placeholder_8=807,
radar_placeholder_9=808,
radar_featured_series=809,
radar_vehicle_for_sale=810,
radar_van_keys=811,
radar_suv_service=812,
radar_security_contract=813,
radar_safe=814,
radar_ped_r=815,
radar_ped_e=816,
radar_payphone=817,
radar_patriot3=818,
radar_music_studio=819,
radar_jubilee=820,
radar_granger2=821,
radar_explosive_charge=822,
radar_deity=823,
radar_d_champion=824,
radar_buffalo4=825,
radar_agency=826,
radar_biker_bar=827,
radar_simeon_overlay=828,
radar_junk_skydive=829,
radar_luxury_car_showroom=830,
radar_car_showroom=831,
radar_car_showroom_simeon=832,
radar_flaming_skull=833,
radar_weapon_ammo=834,
radar_community_series=835,
radar_cayo_series=836,
radar_clubhouse_contract=837,
radar_agent_ulp=838,
radar_acid=839,
radar_acid_lab=840,
radar_dax_overlay=841,
radar_dead_drop_package=842,
radar_downtown_cab=843,
radar_gun_van=844,
radar_stash_house=845,
radar_tractor=846,
radar_warehouse_juggalo=847,
radar_warehouse_juggalo_dax=848,
radar_weapon_crowbar=849,
radar_duffel_bag=850,
radar_oil_tanker=851,
radar_acid_lab_tent=852,
radar_van_burrito=853,
radar_acid_boost=854,
radar_ped_gang_leader=855,
radar_multistorey_garage=856,
radar_seized_asset_sales=857,
radar_cayo_attrition=858,
radar_bicycle=859,
radar_bicycle_trial=860,
radar_raiju=861,
radar_conada2=862,
radar_overlay_ready_for_sell=863,
radar_overlay_missing_supplies=864,
radar_streamer216=865,
radar_signal_jammer=866,
radar_salvage_yard=867,
radar_robbery_prep_equipment=868,
radar_robbery_prep_overlay=869,
radar_yusuf=870,
radar_vincent=871,
radar_vinewood_garage=872,
radar_lstb=873,
radar_cctv_workstation=874,
radar_hacking_device=875,
radar_race_drag=876,
radar_race_drift=877,
radar_casino_prep=878,
radar_planning_wall=879,
radar_weapon_crate=880,
radar_weapon_snowball=881,
radar_train_signals_green=882,
radar_train_signals_red=883,
radar_office_transporter=884,
radar_yankton_survival=885,
radar_daily_bounty=886,
radar_bounty_target=887,
radar_filming_schedule=888,
radar_pizza_this=889,
radar_aircraft_carrier=890,
radar_weapon_emp=891,
radar_maude_eccles=892,
radar_bail_bonds_office=893,
radar_weapon_emp_mine=894,
radar_zombie_disease=895,
radar_zombie_proximity=896,
radar_zombie_fire=897,
radar_animal_possessed=898,
radar_mobile_phone=899,
radar_garment_factory=900,
radar_garment_factory_for_sale=901,
radar_garment_factory_equipment=902,
radar_field_hangar=903,
radar_field_hangar_for_sale=904,
radar_cargobob_ch53=905,
radar_chopper_lift_ammo=906,
radar_chopper_lift_armor=907,
radar_chopper_lift_explosives=908,
radar_chopper_lift_upgrade=909,
radar_chopper_lift_weapon=910,
radar_cargo_ship=911,
radar_submarine_missile=912,
radar_propeller_engine=913,
radar_shark=914,
radar_fast_travel=915,
radar_plane_duster2=916,
radar_plane_titan2=917,
radar_collectible=918,
radar_field_hangar_discount=919,
radar_garment_factory_discount=920,
radar_weapon_gusenberg_sweeper=921,
radar_weapon_tear_gas=922,
radar_dog=923,
radar_bobcat_security=924,
radar_smoke_shop=925,
radar_smoke_shop_for_sale=926,
radar_smoke_shop_attention=927,
radar_helitours=928,
radar_helitours_for_sale=929,
radar_helitours_attention=930,
radar_car_wash_business=931,
radar_car_wash_business_for_sale=932,
radar_car_wash_business_attention=933,
radar_attention=934,
radar_alarm=935,
radar_helitours_discount=936,
radar_smoke_shop_discount=937,
radar_car_wash_business_discount=938,
radar_real_estate=939,
radar_medical_courier=940,
radar_gruppe_sechs=941,
radar_fire_station=942,
radar_fire_truck=943,
radar_alpha_mail=944,
radar_ls_meteor=945,
radar_four20_survival=946,
radar_community_mission_series=947,
radar_property_mansion=948,
radar_ai_keypad=949,
radar_taxi_self_drive=950,
radar_train_subway=951,
radar_trashbag=952,
radar_mission_creator=953,
radar_cat=954,
radar_mansion_ai_m=955,
radar_mansion_ai_f=956,
radar_mansion_ai_gang=957,
radar_heist_art_unavailable=958,
radar_heist_art=959,
radar_property_mansion_art_heist=960,
radar_art_heist_prep=961,
radar_manhole_key=962,
radar_buyers_request=963,
radar_armored_caracara=964,
radar_witness=965,
},{
__index=function(c,d)a("fx.Enum.BlipSprite has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.BlipSprite is read-only",2)end,
})]],
["shared/enums/BlockingObjectFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
BLOCKING_OBJECT_DEFAULT=0,
BLOCKING_OBJECT_WANDERPATH=1,
BLOCKING_OBJECT_SHORTESTPATH=2,
BLOCKING_OBJECT_FLEEPATH=4,
BLOCKING_OBJECT_ALLPATHS=7,
},{
__index=function(c,d)a("fx.Enum.BlockingObjectFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.BlockingObjectFlags is read-only",2)end,
})]],
["shared/enums/BoatMissionFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
None=0,
StopAtEnd=1,
StopAtShore=2,
AvoidShore=4,
PreferForward=8,
NeverStop=16,
NeverNavMesh=32,
NeverRoute=64,
ForceBeached=128,
UseWanderRoute=256,
UseFleeRoute=512,
NeverPause=1024,
DefaultSettings=7,
OpenOceanSettings=111,
BoatTaxiSettings=1071,
},{
__index=function(c,d)a("fx.Enum.BoatMissionFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.BoatMissionFlags is read-only",2)end,
})]],
["shared/enums/BusySpinnerType.lua"]=[[
local a,b=error,tostring
return setmetatable({
BUSY_SPINNER_LEFT=0,
BUSY_SPINNER_LEFT_2=1,
BUSY_SPINNER_LEFT_3=2,
BUSY_SPINNER_SAVE=3,
BUSY_SPINNER_RIGHT=4,
},{
__index=function(c,d)a("fx.Enum.BusySpinnerType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.BusySpinnerType is read-only",2)end,
})]],
["shared/enums/CamSplineSmoothingFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
CAM_SPLINE_NO_SMOOTH=0,
CAM_SPLINE_SLOW_IN_SMOOTH=1,
CAM_SPLINE_SLOW_OUT_SMOOTH=2,
CAM_SPLINE_SLOW_IN_OUT_SMOOTH=3,
CAM_SPLINE_VERY_SLOW_IN=4,
CAM_SPLINE_VERY_SLOW_OUT=5,
CAM_SPLINE_VERY_SLOW_IN_SLOW_OUT=6,
CAM_SPLINE_SLOW_IN_VERY_SLOW_OUT=7,
CAM_SPLINE_VERY_SLOW_IN_VERY_SLOW_OUT=8,
CAM_SPLINE_EASE_IN=9,
CAM_SPLINE_EASE_OUT=10,
CAM_SPLINE_QUADRATIC_EASE_IN=11,
CAM_SPLINE_QUADRATIC_EASE_OUT=12,
CAM_SPLINE_QUADRATIC_EASE_IN_OUT=13,
CAM_SPLINE_CUBIC_EASE_IN=14,
CAM_SPLINE_CUBIC_EASE_OUT=15,
CAM_SPLINE_CUBIC_EASE_IN_OUT=16,
CAM_SPLINE_QUARTIC_EASE_IN=17,
CAM_SPLINE_QUARTIC_EASE_OUT=18,
CAM_SPLINE_QUARTIC_EASE_IN_OUT=19,
CAM_SPLINE_QUINTIC_EASE_IN=20,
CAM_SPLINE_QUINTIC_EASE_OUT=21,
CAM_SPLINE_QUINTIC_EASE_IN_OUT=22,
CAM_SPLINE_CIRCULAR_EASE_IN=23,
CAM_SPLINE_CIRCULAR_EASE_OUT=24,
CAM_SPLINE_CIRCULAR_EASE_IN_OUT=25,
},{
__index=function(c,d)a("fx.Enum.CamSplineSmoothingFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.CamSplineSmoothingFlags is read-only",2)end,
})]],
["shared/enums/CamViewMode.lua"]=[[
local a,b=error,tostring
return setmetatable({
THIRD_PERSON_NEAR=0,
THIRD_PERSON_MEDIUM=1,
THIRD_PERSON_FAR=2,
CINEMATIC=3,
FIRST_PERSON=4,
},{
__index=function(c,d)a("fx.Enum.CamViewMode has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.CamViewMode is read-only",2)end,
})]],
["shared/enums/CargobobHook.lua"]=[[
local a,b=error,tostring
return setmetatable({
CARGOBOB_HOOK=0,
CARGOBOB_MAGNET=1,
},{
__index=function(c,d)a("fx.Enum.CargobobHook has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.CargobobHook is read-only",2)end,
})]],
["shared/enums/CellInput.lua"]=[[
local a,b=error,tostring
return setmetatable({
CELL_INPUT_NONE=0,
CELL_INPUT_UP=1,
CELL_INPUT_DOWN=2,
CELL_INPUT_LEFT=3,
CELL_INPUT_RIGHT=4,
CELL_INPUT_SELECT=5,
},{
__index=function(c,d)a("fx.Enum.CellInput has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.CellInput is read-only",2)end,
})]],
["shared/enums/CombatAttribute.lua"]=[[
local a,b=error,tostring
return setmetatable({
CA_INVALID=-1,
CA_USE_COVER=0,
CA_USE_VEHICLE=1,
CA_DO_DRIVEBYS=2,
CA_LEAVE_VEHICLES=3,
CA_CAN_USE_DYNAMIC_STRAFE_DECISIONS=4,
CA_ALWAYS_FIGHT=5,
CA_FLEE_WHILST_IN_VEHICLE=6,
CA_JUST_FOLLOW_VEHICLE=7,
CA_PLAY_REACTION_ANIMS=8,
CA_WILL_SCAN_FOR_DEAD_PEDS=9,
CA_IS_A_GUARD=10,
CA_JUST_SEEK_COVER=11,
CA_BLIND_FIRE_IN_COVER=12,
CA_AGGRESSIVE=13,
CA_CAN_INVESTIGATE=14,
CA_CAN_USE_RADIO=15,
CA_CAN_CAPTURE_ENEMY_PEDS=16,
CA_ALWAYS_FLEE=17,
CA_CAN_TAUNT_IN_VEHICLE=20,
CA_CAN_CHASE_TARGET_ON_FOOT=21,
CA_WILL_DRAG_INJURED_PEDS_TO_SAFETY=22,
CA_REQUIRES_LOS_TO_SHOOT=23,
CA_USE_PROXIMITY_FIRING_RATE=24,
CA_DISABLE_SECONDARY_TARGET=25,
CA_DISABLE_ENTRY_REACTIONS=26,
CA_PERFECT_ACCURACY=27,
CA_CAN_USE_FRUSTRATED_ADVANCE=28,
CA_MOVE_TO_LOCATION_BEFORE_COVER_SEARCH=29,
CA_CAN_SHOOT_WITHOUT_LOS=30,
CA_MAINTAIN_MIN_DISTANCE_TO_TARGET=31,
CA_CAN_USE_PEEKING_VARIATIONS=34,
CA_DISABLE_PINNED_DOWN=35,
CA_DISABLE_PIN_DOWN_OTHERS=36,
CA_OPEN_COMBAT_WHEN_DEFENSIVE_AREA_IS_REACHED=37,
CA_DISABLE_BULLET_REACTIONS=38,
CA_CAN_BUST=39,
CA_IGNORED_BY_OTHER_PEDS_WHEN_WANTED=40,
CA_CAN_COMMANDEER_VEHICLES=41,
CA_CAN_FLANK=42,
CA_SWITCH_TO_ADVANCE_IF_CANT_FIND_COVER=43,
CA_SWITCH_TO_DEFENSIVE_IF_IN_COVER=44,
CA_CLEAR_PRIMARY_DEFENSIVE_AREA_WHEN_REACHED=45,
CA_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED=46,
CA_ENABLE_TACTICAL_POINTS_WHEN_DEFENSIVE=47,
CA_DISABLE_COVER_ARC_ADJUSTMENTS=48,
CA_USE_ENEMY_ACCURACY_SCALING=49,
CA_CAN_CHARGE=50,
CA_REMOVE_AREA_SET_WILL_ADVANCE_WHEN_DEFENSIVE_AREA_REACHED=51,
CA_USE_VEHICLE_ATTACK=52,
CA_USE_VEHICLE_ATTACK_IF_VEHICLE_HAS_MOUNTED_GUNS=53,
CA_ALWAYS_EQUIP_BEST_WEAPON=54,
CA_CAN_SEE_UNDERWATER_PEDS=55,
CA_DISABLE_AIM_AT_AI_TARGETS_IN_HELIS=56,
CA_DISABLE_SEEK_DUE_TO_LINE_OF_SIGHT=57,
CA_DISABLE_FLEE_FROM_COMBAT=58,
CA_DISABLE_TARGET_CHANGES_DURING_VEHICLE_PURSUIT=59,
CA_CAN_THROW_SMOKE_GRENADE=60,
CA_CLEAR_AREA_SET_DEFENSIVE_IF_DEFENSIVE_CANNOT_BE_REACHED=62,
CA_DISABLE_BLOCK_FROM_PURSUE_DURING_VEHICLE_CHASE=64,
CA_DISABLE_SPIN_OUT_DURING_VEHICLE_CHASE=65,
CA_DISABLE_CRUISE_IN_FRONT_DURING_BLOCK_DURING_VEHICLE_CHASE=66,
CA_CAN_IGNORE_BLOCKED_LOS_WEIGHTING=67,
CA_DISABLE_REACT_TO_BUDDY_SHOT=68,
CA_PREFER_NAVMESH_DURING_VEHICLE_CHASE=69,
CA_ALLOWED_TO_AVOID_OFFROAD_DURING_VEHICLE_CHASE=70,
CA_PERMIT_CHARGE_BEYOND_DEFENSIVE_AREA=71,
CA_USE_ROCKETS_AGAINST_VEHICLES_ONLY=72,
CA_DISABLE_TACTICAL_POINTS_WITHOUT_CLEAR_LOS=73,
CA_DISABLE_PULL_ALONGSIDE_DURING_VEHICLE_CHASE=74,
CA_DISABLE_ALL_RANDOMS_FLEE=78,
CA_WILL_GENERATE_DEAD_PED_SEEN_SCRIPT_EVENTS=79,
CA_USE_MAX_SENSE_RANGE_WHEN_RECEIVING_EVENTS=80,
CA_RESTRICT_IN_VEHICLE_AIMING_TO_CURRENT_SIDE=81,
CA_USE_DEFAULT_BLOCKED_LOS_POSITION_AND_DIRECTION=82,
CA_REQUIRES_LOS_TO_AIM=83,
CA_CAN_CRUISE_AND_BLOCK_IN_VEHICLE=84,
CA_PREFER_AIR_COMBAT_WHEN_IN_AIRCRAFT=85,
CA_ALLOW_DOG_FIGHTING=86,
CA_PREFER_NON_AIRCRAFT_TARGETS=87,
CA_PREFER_KNOWN_TARGETS_WHEN_COMBAT_CLOSEST_TARGET=88,
CA_FORCE_CHECK_ATTACK_ANGLE_FOR_MOUNTED_GUNS=89,
CA_BLOCK_FIRE_FOR_VEHICLE_PASSENGER_MOUNTED_GUNS=90,
},{
__index=function(c,d)a("fx.Enum.CombatAttribute has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.CombatAttribute is read-only",2)end,
})]],
["shared/enums/CombatRange.lua"]=[[
local a,b=error,tostring
return setmetatable({
CR_NEAR=0,
CR_MEDIUM=1,
CR_FAR=2,
CR_VERY_FAR=3,
},{
__index=function(c,d)a("fx.Enum.CombatRange has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.CombatRange is read-only",2)end,
})]],
["shared/enums/Context.lua"]=[[
local a,b=error,tostring
return setmetatable({
ON_FOOT=0,
IN_VEHICLE=1,
ON_BIKE=2,
IN_BOAT=3,
IN_AIRCRAFT=4,
IN_SUBMARINE=5,
IN_HELI=6,
IN_TURRET=7,
},{
__index=function(c,d)a("fx.Enum.Context has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.Context is read-only",2)end,
})]],
["shared/enums/Control.lua"]=[[
local a,b=error,tostring
return setmetatable({
INPUT_NEXT_CAMERA=0,
INPUT_LOOK_LR=1,
INPUT_LOOK_UD=2,
INPUT_LOOK_UP_ONLY=3,
INPUT_LOOK_DOWN_ONLY=4,
INPUT_LOOK_LEFT_ONLY=5,
INPUT_LOOK_RIGHT_ONLY=6,
INPUT_CINEMATIC_SLOWMO=7,
INPUT_SCRIPTED_FLY_UD=8,
INPUT_SCRIPTED_FLY_LR=9,
INPUT_SCRIPTED_FLY_ZUP=10,
INPUT_SCRIPTED_FLY_ZDOWN=11,
INPUT_WEAPON_WHEEL_UD=12,
INPUT_WEAPON_WHEEL_LR=13,
INPUT_WEAPON_WHEEL_NEXT=14,
INPUT_WEAPON_WHEEL_PREV=15,
INPUT_SELECT_NEXT_WEAPON=16,
INPUT_SELECT_PREV_WEAPON=17,
INPUT_SKIP_CUTSCENE=18,
INPUT_CHARACTER_WHEEL=19,
INPUT_MULTIPLAYER_INFO=20,
INPUT_SPRINT=21,
INPUT_JUMP=22,
INPUT_ENTER=23,
INPUT_ATTACK=24,
INPUT_AIM=25,
INPUT_LOOK_BEHIND=26,
INPUT_PHONE=27,
INPUT_SPECIAL_ABILITY=28,
INPUT_SPECIAL_ABILITY_SECONDARY=29,
INPUT_MOVE_LR=30,
INPUT_MOVE_UD=31,
INPUT_MOVE_UP_ONLY=32,
INPUT_MOVE_DOWN_ONLY=33,
INPUT_MOVE_LEFT_ONLY=34,
INPUT_MOVE_RIGHT_ONLY=35,
INPUT_DUCK=36,
INPUT_SELECT_WEAPON=37,
INPUT_PICKUP=38,
INPUT_SNIPER_ZOOM=39,
INPUT_SNIPER_ZOOM_IN_ONLY=40,
INPUT_SNIPER_ZOOM_OUT_ONLY=41,
INPUT_SNIPER_ZOOM_IN_SECONDARY=42,
INPUT_SNIPER_ZOOM_OUT_SECONDARY=43,
INPUT_COVER=44,
INPUT_RELOAD=45,
INPUT_TALK=46,
INPUT_DETONATE=47,
INPUT_HUD_SPECIAL=48,
INPUT_ARREST=49,
INPUT_ACCURATE_AIM=50,
INPUT_CONTEXT=51,
INPUT_CONTEXT_SECONDARY=52,
INPUT_WEAPON_SPECIAL=53,
INPUT_WEAPON_SPECIAL_TWO=54,
INPUT_DIVE=55,
INPUT_DROP_WEAPON=56,
INPUT_DROP_AMMO=57,
INPUT_THROW_GRENADE=58,
INPUT_VEH_MOVE_LR=59,
INPUT_VEH_MOVE_UD=60,
INPUT_VEH_MOVE_UP_ONLY=61,
INPUT_VEH_MOVE_DOWN_ONLY=62,
INPUT_VEH_MOVE_LEFT_ONLY=63,
INPUT_VEH_MOVE_RIGHT_ONLY=64,
INPUT_VEH_SPECIAL=65,
INPUT_VEH_GUN_LR=66,
INPUT_VEH_GUN_UD=67,
INPUT_VEH_AIM=68,
INPUT_VEH_ATTACK=69,
INPUT_VEH_ATTACK2=70,
INPUT_VEH_ACCELERATE=71,
INPUT_VEH_BRAKE=72,
INPUT_VEH_DUCK=73,
INPUT_VEH_HEADLIGHT=74,
INPUT_VEH_EXIT=75,
INPUT_VEH_HANDBRAKE=76,
INPUT_VEH_HOTWIRE_LEFT=77,
INPUT_VEH_HOTWIRE_RIGHT=78,
INPUT_VEH_LOOK_BEHIND=79,
INPUT_VEH_CIN_CAM=80,
INPUT_VEH_NEXT_RADIO=81,
INPUT_VEH_PREV_RADIO=82,
INPUT_VEH_NEXT_RADIO_TRACK=83,
INPUT_VEH_PREV_RADIO_TRACK=84,
INPUT_VEH_RADIO_WHEEL=85,
INPUT_VEH_HORN=86,
INPUT_VEH_FLY_THROTTLE_UP=87,
INPUT_VEH_FLY_THROTTLE_DOWN=88,
INPUT_VEH_FLY_YAW_LEFT=89,
INPUT_VEH_FLY_YAW_RIGHT=90,
INPUT_VEH_PASSENGER_AIM=91,
INPUT_VEH_PASSENGER_ATTACK=92,
INPUT_VEH_SPECIAL_ABILITY_FRANKLIN=93,
INPUT_VEH_STUNT_UD=94,
INPUT_VEH_CINEMATIC_UD=95,
INPUT_VEH_CINEMATIC_UP_ONLY=96,
INPUT_VEH_CINEMATIC_DOWN_ONLY=97,
INPUT_VEH_CINEMATIC_LR=98,
INPUT_VEH_SELECT_NEXT_WEAPON=99,
INPUT_VEH_SELECT_PREV_WEAPON=100,
INPUT_VEH_ROOF=101,
INPUT_VEH_JUMP=102,
INPUT_VEH_GRAPPLING_HOOK=103,
INPUT_VEH_SHUFFLE=104,
INPUT_VEH_DROP_PROJECTILE=105,
INPUT_VEH_MOUSE_CONTROL_OVERRIDE=106,
INPUT_VEH_FLY_ROLL_LR=107,
INPUT_VEH_FLY_ROLL_LEFT_ONLY=108,
INPUT_VEH_FLY_ROLL_RIGHT_ONLY=109,
INPUT_VEH_FLY_PITCH_UD=110,
INPUT_VEH_FLY_PITCH_UP_ONLY=111,
INPUT_VEH_FLY_PITCH_DOWN_ONLY=112,
INPUT_VEH_FLY_UNDERCARRIAGE=113,
INPUT_VEH_FLY_ATTACK=114,
INPUT_VEH_FLY_SELECT_NEXT_WEAPON=115,
INPUT_VEH_FLY_SELECT_PREV_WEAPON=116,
INPUT_VEH_FLY_SELECT_TARGET_LEFT=117,
INPUT_VEH_FLY_SELECT_TARGET_RIGHT=118,
INPUT_VEH_FLY_VERTICAL_FLIGHT_MODE=119,
INPUT_VEH_FLY_DUCK=120,
INPUT_VEH_FLY_ATTACK_CAMERA=121,
INPUT_VEH_FLY_MOUSE_CONTROL_OVERRIDE=122,
INPUT_VEH_SUB_TURN_LR=123,
INPUT_VEH_SUB_TURN_LEFT_ONLY=124,
INPUT_VEH_SUB_TURN_RIGHT_ONLY=125,
INPUT_VEH_SUB_PITCH_UD=126,
INPUT_VEH_SUB_PITCH_UP_ONLY=127,
INPUT_VEH_SUB_PITCH_DOWN_ONLY=128,
INPUT_VEH_SUB_THROTTLE_UP=129,
INPUT_VEH_SUB_THROTTLE_DOWN=130,
INPUT_VEH_SUB_ASCEND=131,
INPUT_VEH_SUB_DESCEND=132,
INPUT_VEH_SUB_TURN_HARD_LEFT=133,
INPUT_VEH_SUB_TURN_HARD_RIGHT=134,
INPUT_VEH_SUB_MOUSE_CONTROL_OVERRIDE=135,
INPUT_VEH_PUSHBIKE_PEDAL=136,
INPUT_VEH_PUSHBIKE_SPRINT=137,
INPUT_VEH_PUSHBIKE_FRONT_BRAKE=138,
INPUT_VEH_PUSHBIKE_REAR_BRAKE=139,
INPUT_MELEE_ATTACK_LIGHT=140,
INPUT_MELEE_ATTACK_HEAVY=141,
INPUT_MELEE_ATTACK_ALTERNATE=142,
INPUT_MELEE_BLOCK=143,
INPUT_PARACHUTE_DEPLOY=144,
INPUT_PARACHUTE_DETACH=145,
INPUT_PARACHUTE_TURN_LR=146,
INPUT_PARACHUTE_TURN_LEFT_ONLY=147,
INPUT_PARACHUTE_TURN_RIGHT_ONLY=148,
INPUT_PARACHUTE_PITCH_UD=149,
INPUT_PARACHUTE_PITCH_UP_ONLY=150,
INPUT_PARACHUTE_PITCH_DOWN_ONLY=151,
INPUT_PARACHUTE_BRAKE_LEFT=152,
INPUT_PARACHUTE_BRAKE_RIGHT=153,
INPUT_PARACHUTE_SMOKE=154,
INPUT_PARACHUTE_PRECISION_LANDING=155,
INPUT_MAP=156,
INPUT_SELECT_WEAPON_UNARMED=157,
INPUT_SELECT_WEAPON_MELEE=158,
INPUT_SELECT_WEAPON_HANDGUN=159,
INPUT_SELECT_WEAPON_SHOTGUN=160,
INPUT_SELECT_WEAPON_SMG=161,
INPUT_SELECT_WEAPON_AUTO_RIFLE=162,
INPUT_SELECT_WEAPON_SNIPER=163,
INPUT_SELECT_WEAPON_HEAVY=164,
INPUT_SELECT_WEAPON_SPECIAL=165,
INPUT_SELECT_CHARACTER_MICHAEL=166,
INPUT_SELECT_CHARACTER_FRANKLIN=167,
INPUT_SELECT_CHARACTER_TREVOR=168,
INPUT_SELECT_CHARACTER_MULTIPLAYER=169,
INPUT_SAVE_REPLAY_CLIP=170,
INPUT_SPECIAL_ABILITY_PC=171,
INPUT_CELLPHONE_UP=172,
INPUT_CELLPHONE_DOWN=173,
INPUT_CELLPHONE_LEFT=174,
INPUT_CELLPHONE_RIGHT=175,
INPUT_CELLPHONE_SELECT=176,
INPUT_CELLPHONE_CANCEL=177,
INPUT_CELLPHONE_OPTION=178,
INPUT_CELLPHONE_EXTRA_OPTION=179,
INPUT_CELLPHONE_SCROLL_FORWARD=180,
INPUT_CELLPHONE_SCROLL_BACKWARD=181,
INPUT_CELLPHONE_CAMERA_FOCUS_LOCK=182,
INPUT_CELLPHONE_CAMERA_GRID=183,
INPUT_CELLPHONE_CAMERA_SELFIE=184,
INPUT_CELLPHONE_CAMERA_DOF=185,
INPUT_CELLPHONE_CAMERA_EXPRESSION=186,
INPUT_FRONTEND_DOWN=187,
INPUT_FRONTEND_UP=188,
INPUT_FRONTEND_LEFT=189,
INPUT_FRONTEND_RIGHT=190,
INPUT_FRONTEND_RDOWN=191,
INPUT_FRONTEND_RUP=192,
INPUT_FRONTEND_RLEFT=193,
INPUT_FRONTEND_RRIGHT=194,
INPUT_FRONTEND_AXIS_X=195,
INPUT_FRONTEND_AXIS_Y=196,
INPUT_FRONTEND_RIGHT_AXIS_X=197,
INPUT_FRONTEND_RIGHT_AXIS_Y=198,
INPUT_FRONTEND_PAUSE=199,
INPUT_FRONTEND_PAUSE_ALTERNATE=200,
INPUT_FRONTEND_ACCEPT=201,
INPUT_FRONTEND_CANCEL=202,
INPUT_FRONTEND_X=203,
INPUT_FRONTEND_Y=204,
INPUT_FRONTEND_LB=205,
INPUT_FRONTEND_RB=206,
INPUT_FRONTEND_LT=207,
INPUT_FRONTEND_RT=208,
INPUT_FRONTEND_LS=209,
INPUT_FRONTEND_RS=210,
INPUT_FRONTEND_LEADERBOARD=211,
INPUT_FRONTEND_SOCIAL_CLUB=212,
INPUT_FRONTEND_SOCIAL_CLUB_SECONDARY=213,
INPUT_FRONTEND_DELETE=214,
INPUT_FRONTEND_ENDSCREEN_ACCEPT=215,
INPUT_FRONTEND_ENDSCREEN_EXPAND=216,
INPUT_FRONTEND_SELECT=217,
INPUT_SCRIPT_LEFT_AXIS_X=218,
INPUT_SCRIPT_LEFT_AXIS_Y=219,
INPUT_SCRIPT_RIGHT_AXIS_X=220,
INPUT_SCRIPT_RIGHT_AXIS_Y=221,
INPUT_SCRIPT_RUP=222,
INPUT_SCRIPT_RDOWN=223,
INPUT_SCRIPT_RLEFT=224,
INPUT_SCRIPT_RRIGHT=225,
INPUT_SCRIPT_LB=226,
INPUT_SCRIPT_RB=227,
INPUT_SCRIPT_LT=228,
INPUT_SCRIPT_RT=229,
INPUT_SCRIPT_LS=230,
INPUT_SCRIPT_RS=231,
INPUT_SCRIPT_PAD_UP=232,
INPUT_SCRIPT_PAD_DOWN=233,
INPUT_SCRIPT_PAD_LEFT=234,
INPUT_SCRIPT_PAD_RIGHT=235,
INPUT_SCRIPT_SELECT=236,
INPUT_CURSOR_ACCEPT=237,
INPUT_CURSOR_CANCEL=238,
INPUT_CURSOR_X=239,
INPUT_CURSOR_Y=240,
INPUT_CURSOR_SCROLL_UP=241,
INPUT_CURSOR_SCROLL_DOWN=242,
INPUT_ENTER_CHEAT_CODE=243,
INPUT_INTERACTION_MENU=244,
INPUT_MP_TEXT_CHAT_ALL=245,
INPUT_MP_TEXT_CHAT_TEAM=246,
INPUT_MP_TEXT_CHAT_FRIENDS=247,
INPUT_MP_TEXT_CHAT_CREW=248,
INPUT_PUSH_TO_TALK=249,
INPUT_CREATOR_LS=250,
INPUT_CREATOR_RS=251,
INPUT_CREATOR_LT=252,
INPUT_CREATOR_RT=253,
INPUT_CREATOR_MENU_TOGGLE=254,
INPUT_CREATOR_ACCEPT=255,
INPUT_CREATOR_DELETE=256,
INPUT_ATTACK2=257,
INPUT_RAPPEL_JUMP=258,
INPUT_RAPPEL_LONG_JUMP=259,
INPUT_RAPPEL_SMASH_WINDOW=260,
INPUT_PREV_WEAPON=261,
INPUT_NEXT_WEAPON=262,
INPUT_MELEE_ATTACK1=263,
INPUT_MELEE_ATTACK2=264,
INPUT_WHISTLE=265,
INPUT_MOVE_LEFT=266,
INPUT_MOVE_RIGHT=267,
INPUT_MOVE_UP=268,
INPUT_MOVE_DOWN=269,
INPUT_LOOK_LEFT=270,
INPUT_LOOK_RIGHT=271,
INPUT_LOOK_UP=272,
INPUT_LOOK_DOWN=273,
INPUT_SNIPER_ZOOM_IN=274,
INPUT_SNIPER_ZOOM_OUT=275,
INPUT_SNIPER_ZOOM_IN_ALTERNATE=276,
INPUT_SNIPER_ZOOM_OUT_ALTERNATE=277,
INPUT_VEH_MOVE_LEFT=278,
INPUT_VEH_MOVE_RIGHT=279,
INPUT_VEH_MOVE_UP=280,
INPUT_VEH_MOVE_DOWN=281,
INPUT_VEH_GUN_LEFT=282,
INPUT_VEH_GUN_RIGHT=283,
INPUT_VEH_GUN_UP=284,
INPUT_VEH_GUN_DOWN=285,
INPUT_VEH_LOOK_LEFT=286,
INPUT_VEH_LOOK_RIGHT=287,
INPUT_REPLAY_START_STOP_RECORDING=288,
INPUT_REPLAY_START_STOP_RECORDING_SECONDARY=289,
INPUT_SCALED_LOOK_LR=290,
INPUT_SCALED_LOOK_UD=291,
INPUT_SCALED_LOOK_UP_ONLY=292,
INPUT_SCALED_LOOK_DOWN_ONLY=293,
INPUT_SCALED_LOOK_LEFT_ONLY=294,
INPUT_SCALED_LOOK_RIGHT_ONLY=295,
INPUT_REPLAY_MARKER_DELETE=296,
INPUT_REPLAY_CLIP_DELETE=297,
INPUT_REPLAY_PAUSE=298,
INPUT_REPLAY_REWIND=299,
INPUT_REPLAY_FFWD=300,
INPUT_REPLAY_NEWMARKER=301,
INPUT_REPLAY_RECORD=302,
INPUT_REPLAY_SCREENSHOT=303,
INPUT_REPLAY_HIDEHUD=304,
INPUT_REPLAY_STARTPOINT=305,
INPUT_REPLAY_ENDPOINT=306,
INPUT_REPLAY_ADVANCE=307,
INPUT_REPLAY_BACK=308,
INPUT_REPLAY_TOOLS=309,
INPUT_REPLAY_RESTART=310,
INPUT_REPLAY_SHOWHOTKEY=311,
INPUT_REPLAY_CYCLEMARKERLEFT=312,
INPUT_REPLAY_CYCLEMARKERRIGHT=313,
INPUT_REPLAY_FOVINCREASE=314,
INPUT_REPLAY_FOVDECREASE=315,
INPUT_REPLAY_CAMERAUP=316,
INPUT_REPLAY_CAMERADOWN=317,
INPUT_REPLAY_SAVE=318,
INPUT_REPLAY_TOGGLETIME=319,
INPUT_REPLAY_TOGGLETIPS=320,
INPUT_REPLAY_PREVIEW=321,
INPUT_REPLAY_TOGGLE_TIMELINE=322,
INPUT_REPLAY_TIMELINE_PICKUP_CLIP=323,
INPUT_REPLAY_TIMELINE_DUPLICATE_CLIP=324,
INPUT_REPLAY_TIMELINE_PLACE_CLIP=325,
INPUT_REPLAY_CTRL=326,
INPUT_REPLAY_TIMELINE_SAVE=327,
INPUT_REPLAY_PREVIEW_AUDIO=328,
INPUT_VEH_DRIVE_LOOK=329,
INPUT_VEH_DRIVE_LOOK2=330,
INPUT_VEH_FLY_ATTACK2=331,
INPUT_RADIO_WHEEL_UD=332,
INPUT_RADIO_WHEEL_LR=333,
INPUT_VEH_SLOWMO_UD=334,
INPUT_VEH_SLOWMO_UP_ONLY=335,
INPUT_VEH_SLOWMO_DOWN_ONLY=336,
INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE=337,
INPUT_VEH_HYDRAULICS_CONTROL_LEFT=338,
INPUT_VEH_HYDRAULICS_CONTROL_RIGHT=339,
INPUT_VEH_HYDRAULICS_CONTROL_UP=340,
INPUT_VEH_HYDRAULICS_CONTROL_DOWN=341,
INPUT_VEH_HYDRAULICS_CONTROL_UD=342,
INPUT_VEH_HYDRAULICS_CONTROL_LR=343,
INPUT_SWITCH_VISOR=344,
INPUT_VEH_MELEE_HOLD=345,
INPUT_VEH_MELEE_LEFT=346,
INPUT_VEH_MELEE_RIGHT=347,
INPUT_MAP_POI=348,
INPUT_REPLAY_SNAPMATIC_PHOTO=349,
INPUT_VEH_CAR_JUMP=350,
INPUT_VEH_ROCKET_BOOST=351,
INPUT_VEH_FLY_BOOST=352,
INPUT_VEH_PARACHUTE=353,
INPUT_VEH_BIKE_WINGS=354,
INPUT_VEH_FLY_BOMB_BAY=355,
INPUT_VEH_FLY_COUNTER=356,
INPUT_VEH_TRANSFORM=357,
INPUT_QUAD_LOCO_REVERSE=358,
INPUT_RESPAWN_FASTER=359,
INPUT_HUDMARKER_SELECT=360,
},{
__index=function(c,d)a("fx.Enum.Control has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.Control is read-only",2)end,
})]],
["shared/enums/DecalTypes.lua"]=[[
local a,b=error,tostring
return setmetatable({
splatters_blood=1010,
splatters_blood_dir=1015,
splatters_blood_mist=1017,
splatters_mud=1020,
splatters_paint=1030,
splatters_water=1040,
splatters_water_hydrant=1050,
splatters_blood2=1110,
weapImpact_metal=4010,
weapImpact_concrete=4020,
weapImpact_mattress=4030,
weapImpact_mud=4032,
weapImpact_wood=4050,
weapImpact_sand=4053,
weapImpact_cardboard=4040,
weapImpact_melee_glass=4100,
weapImpact_glass_blood=4102,
weapImpact_glass_blood2=4104,
weapImpact_shotgun_paper=4200,
weapImpact_shotgun_mattress=4201,
weapImpact_shotgun_metal=4202,
weapImpact_shotgun_wood=4203,
weapImpact_shotgun_dirt=4204,
weapImpact_shotgun_tvscreen=4205,
weapImpact_shotgun_tvscreen2=4206,
weapImpact_shotgun_tvscreen3=4207,
weapImpact_melee_concrete=4310,
weapImpact_melee_wood=4312,
weapImpact_melee_metal=4314,
burn1=4421,
burn2=4422,
burn3=4423,
burn4=4424,
burn5=4425,
bang_concrete_bang=5000,
bang_concrete_bang2=5001,
bang_bullet_bang=5002,
bang_bullet_bang2=5004,
bang_glass=5031,
bang_glass2=5032,
solidPool_water=9000,
solidPool_blood=9001,
solidPool_oil=9002,
solidPool_petrol=9003,
solidPool_mud=9004,
porousPool_water=9005,
porousPool_blood=9006,
porousPool_oil=9007,
porousPool_petrol=9008,
porousPool_mud=9009,
porousPool_water_ped_drip=9010,
liquidTrail_water=9050,
},{
__index=function(c,d)a("fx.Enum.DecalTypes has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.DecalTypes is read-only",2)end,
})]],
["shared/enums/DecorType.lua"]=[[
local a,b=error,tostring
return setmetatable({
DECOR_TYPE_FLOAT=1,
DECOR_TYPE_BOOL=2,
DECOR_TYPE_INT=3,
DECOR_TYPE_STRING=4,
DECOR_TYPE_TIME=5,
},{
__index=function(c,d)a("fx.Enum.DecorType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.DecorType is read-only",2)end,
})]],
["shared/enums/DispatchType.lua"]=[[
local a,b=error,tostring
return setmetatable({
DT_Invalid=0,
DT_PoliceAutomobile=1,
DT_PoliceHelicopter=2,
DT_FireDepartment=3,
DT_SwatAutomobile=4,
DT_AmbulanceDepartment=5,
DT_PoliceRiders=6,
DT_PoliceVehicleRequest=7,
DT_PoliceRoadBlock=8,
DT_PoliceAutomobileWaitPulledOver=9,
DT_PoliceAutomobileWaitCruising=10,
DT_Gangs=11,
DT_SwatHelicopter=13,
DT_PoliceBoat=14,
DT_ArmyVehicle=15,
DT_BikerBackup=15,
},{
__index=function(c,d)a("fx.Enum.DispatchType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.DispatchType is read-only",2)end,
})]],
["shared/enums/DoorId.lua"]=[[
local a,b=error,tostring
return setmetatable({
VEH_EXT_DOOR_DSIDE_F=0,
VEH_EXT_DOOR_DSIDE_R=1,
VEH_EXT_DOOR_PSIDE_F=2,
VEH_EXT_DOOR_PSIDE_R=3,
VEH_EXT_BONNET=4,
VEH_EXT_BOOT=5,
},{
__index=function(c,d)a("fx.Enum.DoorId has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.DoorId is read-only",2)end,
})]],
["shared/enums/DriveBehaviorFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
DF_StopForCars=1,
DF_StopForPeds=2,
DF_SwerveAroundAllCars=4,
DF_SteerAroundStationaryCars=8,
DF_SteerAroundPeds=16,
DF_SteerAroundObjects=32,
DF_DontSteerAroundPlayerPed=64,
DF_StopAtLights=128,
DF_GoOffRoadWhenAvoiding=256,
DF_DriveIntoOncomingTraffic=512,
DF_DriveInReverse=1024,
DF_UseWanderFallbackInsteadOfStraightLine=2048,
DF_AvoidRestrictedAreas=4096,
DF_PreventBackgroundPathfinding=8192,
DF_AdjustCruiseSpeedBasedOnRoadSpeed=16384,
DF_UseShortCutLinks=262144,
DF_ChangeLanesAroundObstructions=524288,
DF_UseSwitchedOffNodes=2097152,
DF_PreferNavmeshRoute=4194304,
DF_PlaneTaxiMode=8388608,
DF_ForceStraightLine=16777216,
DF_UseStringPullingAtJunctions=33554432,
DF_AvoidHighways=536870912,
DF_ForceJoinInRoadDirection=1073741824,
},{
__index=function(c,d)a("fx.Enum.DriveBehaviorFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.DriveBehaviorFlags is read-only",2)end,
})]],
["shared/enums/DrivingMode.lua"]=[[
local a,b=error,tostring
return setmetatable({
DF_StopForCars=1,
DF_StopForPeds=2,
DF_SwerveAroundAllCars=4,
DF_SteerAroundStationaryCars=8,
DF_SteerAroundPeds=16,
DF_SteerAroundObjects=32,
DF_DontSteerAroundPlayerPed=64,
DF_StopAtLights=128,
DF_GoOffRoadWhenAvoiding=256,
DF_DriveIntoOncomingTraffic=512,
DF_DriveInReverse=1024,
DF_UseWanderFallbackInsteadOfStraightLine=2048,
DF_AvoidRestrictedAreas=4096,
DF_PreventBackgroundPathfinding=8192,
DF_AdjustCruiseSpeedBasedOnRoadSpeed=16384,
DF_UseShortCutLinks=262144,
DF_ChangeLanesAroundObstructions=524288,
DF_UseSwitchedOffNodes=2097152,
DF_PreferNavmeshRoute=4194304,
DF_PlaneTaxiMode=8388608,
DF_ForceStraightLine=16777216,
DF_UseStringPullingAtJunctions=33554432,
DF_AvoidHighways=536870912,
DF_ForceJoinInRoadDirection=1073741824,
DRIVINGMODE_STOPFORCARS=786603,
DRIVINGMODE_STOPFORCARS_STRICT=262275,
DRIVINGMODE_AVOIDCARS=786469,
DRIVINGMODE_AVOIDCARS_RECKLESS=786468,
DRIVINGMODE_PLOUGHTHROUGH=262144,
DRIVINGMODE_STOPFORCARS_IGNORELIGHTS=786475,
DRIVINGMODE_AVOIDCARS_OBEYLIGHTS=786597,
DRIVINGMODE_AVOIDCARS_STOPFORPEDS_OBEYLIGHTS=786599,
},{
__index=function(c,d)a("fx.Enum.DrivingMode has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.DrivingMode is read-only",2)end,
})]],
["shared/enums/EntityOrphanMode.lua"]=[[
local a,b=error,tostring
return setmetatable({
DeleteWhenNotRelevant=0,
DeleteOnOwnerDisconnect=1,
KeepEntity=2,
},{
__index=function(c,d)a("fx.Enum.EntityOrphanMode has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.EntityOrphanMode is read-only",2)end,
})]],
["shared/enums/EventType.lua"]=[[
local a,b=error,tostring
return setmetatable({
RC_PED_STEAL_VEHICLE=0,
RC_PED_JAY_WALK_LIGHT=1,
RC_COP_PURSUE=2,
RC_COP_PURSUE_VEHICLE_FLEE_SPAWNED=3,
RC_COP_VEHICLE_DRIVING_FAST=4,
RC_COP_VEHICLE_DRIVING_SLOW=5,
RC_DRIVER_RECKLESS=6,
RC_DRIVER_PRO=7,
RC_PED_PURSUE_WHEN_HIT_BY_CAR=8,
},{
__index=function(c,d)a("fx.Enum.EventType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.EventType is read-only",2)end,
})]],
["shared/enums/ExplosionTag.lua"]=[[
local a,b=error,tostring
return setmetatable({
DONTCARE=-1,
GRENADE=0,
GRENADELAUNCHER=1,
STICKYBOMB=2,
MOLOTOV=3,
ROCKET=4,
TANKSHELL=5,
HI_OCTANE=6,
CAR=7,
PLANE=8,
PETROL_PUMP=9,
BIKE=10,
DIR_STEAM=11,
DIR_FLAME=12,
DIR_WATER_HYDRANT=13,
DIR_GAS_CANISTER=14,
BOAT=15,
SHIP_DESTROY=16,
TRUCK=17,
BULLET=18,
SMOKE_GRENADE_LAUNCHER=19,
SMOKE_GRENADE=20,
BZGAS=21,
FLARE=22,
GAS_CANISTER=23,
EXTINGUISHER=24,
PROGRAMMABLEAR=25,
TRAIN=26,
BARREL=27,
PROPANE=28,
BLIMP=29,
DIR_FLAME_EXPLODE=30,
TANKER=31,
PLANE_ROCKET=32,
VEHICLE_BULLET=33,
GAS_TANK=34,
BIRD_CRAP=35,
RAILGUN=36,
BLIMP2=37,
FIREWORK=38,
SNOWBALL=39,
PROXMINE=40,
VALKYRIE_CANNON=41,
AIR_DEFENCE=42,
PIPEBOMB=43,
VEHICLEMINE=44,
EXPLOSIVEAMMO=45,
APCSHELL=46,
BOMB_CLUSTER=47,
BOMB_GAS=48,
BOMB_INCENDIARY=49,
BOMB_STANDARD=50,
TORPEDO=51,
TORPEDO_UNDERWATER=52,
BOMBUSHKA_CANNON=53,
BOMB_CLUSTER_SECONDARY=54,
HUNTER_BARRAGE=55,
HUNTER_CANNON=56,
ROGUE_CANNON=57,
MINE_UNDERWATER=58,
ORBITAL_CANNON=59,
BOMB_STANDARD_WIDE=60,
EXPLOSIVEAMMO_SHOTGUN=61,
OPPRESSOR2_CANNON=62,
MORTAR_KINETIC=63,
VEHICLEMINE_KINETIC=64,
VEHICLEMINE_EMP=65,
VEHICLEMINE_SPIKE=66,
VEHICLEMINE_SLICK=67,
VEHICLEMINE_TAR=68,
SCRIPT_DRONE=69,
RAYGUN=70,
BURIEDMINE=71,
SCRIPT_MISSILE=72,
RCTANK_ROCKET=73,
BOMB_WATER=74,
BOMB_WATER_SECONDARY=75,
MINE_CNCSPIKE=76,
BZGAS_MK2=77,
FLASHGRENADE=78,
STUNGRENADE=79,
CNC_KINETICRAM=80,
SCRIPT_MISSILE_LARGE=81,
SUBMARINE_BIG=82,
EMPLAUNCHER_EMP=83,
},{
__index=function(c,d)a("fx.Enum.ExplosionTag has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.ExplosionTag is read-only",2)end,
})]],
["shared/enums/FiringPatternHashes.lua"]=[[
local a,b=error,tostring
return setmetatable({
FIRING_PATTERN_DEFAULT=0,
FIRING_PATTERN_BURST_FIRE=-687903391,
FIRING_PATTERN_BURST_FIRE_DRIVEBY=-753768974,
FIRING_PATTERN_FULL_AUTO=-957453492,
FIRING_PATTERN_SINGLE_SHOT=1566631136,
FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC=2055493265,
FIRING_PATTERN_BURST_FIRE_HELI=-1857128337,
FIRING_PATTERN_SHORT_BURSTS=445831135,
FIRING_PATTERN_BURST_FIRE_MICRO=1122960381,
FIRING_PATTERN_SLOW_FIRE_TANK=-490063247,
FIRING_PATTERN_TAMPA_MORTAR=-1842093953,
},{
__index=function(c,d)a("fx.Enum.FiringPatternHashes has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.FiringPatternHashes is read-only",2)end,
})]],
["shared/enums/FollowPointRouteMode.lua"]=[[
local a,b=error,tostring
return setmetatable({
TICKET_SINGLE=0,
TICKET_RETURN=1,
TICKET_SEASON=2,
TICKET_LOOP=3,
},{
__index=function(c,d)a("fx.Enum.FollowPointRouteMode has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.FollowPointRouteMode is read-only",2)end,
})]],
["shared/enums/FontBitField.lua"]=[[
local a,b=error,tostring
return setmetatable({
FONT_BIT_STANDARD=1,
FONT_BIT_CURSIVE=2,
FONT_BIT_ROCKSTAR_TAG=4,
FONT_BIT_LEADERBOARD=8,
FONT_BIT_CONDENSED=16,
FONT_BIT_FIXED_WIDTH_NUMBERS=32,
FONT_BIT_CONDENSED_NOT_GAMERNAME=64,
FONT_BIT_PRICEDOWN=128,
},{
__index=function(c,d)a("fx.Enum.FontBitField has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.FontBitField is read-only",2)end,
})]],
["shared/enums/ForceType.lua"]=[[
local a,b=error,tostring
return setmetatable({
MinForce=0,
MaxForceRot=1,
MinForce2=2,
MaxForceRot2=3,
ForceNoRot=4,
ForceRotPlusForce=5,
},{
__index=function(c,d)a("fx.Enum.ForceType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.ForceType is read-only",2)end,
})]],
["shared/enums/GfxDrawOrder.lua"]=[[
local a,b=error,tostring
return setmetatable({
GFX_ORDER_BEFORE_HUD_PRIORITY_LOW=0,
GFX_ORDER_BEFORE_HUD=1,
GFX_ORDER_BEFORE_HUD_PRIORITY_HIGH=2,
GFX_ORDER_AFTER_HUD_PRIORITY_LOW=3,
GFX_ORDER_AFTER_HUD=4,
GFX_ORDER_AFTER_HUD_PRIORITY_HIGH=5,
GFX_ORDER_AFTER_FADE_PRIORITY_LOW=6,
GFX_ORDER_AFTER_FADE=7,
GFX_ORDER_AFTER_FADE_PRIORITY_HIGH=8,
},{
__index=function(c,d)a("fx.Enum.GfxDrawOrder has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.GfxDrawOrder is read-only",2)end,
})]],
["shared/enums/GpsSlotType.lua"]=[[
local a,b=error,tostring
return setmetatable({
GPS_SLOT_WAYPOINT=0,
GPS_SLOT_RADAR_BLIP=1,
GPS_SLOT_DISCRETE=2,
},{
__index=function(c,d)a("fx.Enum.GpsSlotType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.GpsSlotType is read-only",2)end,
})]],
["shared/enums/GravityLevel.lua"]=[[
local a,b=error,tostring
return setmetatable({
GRAV_EARTH=0,
GRAV_MOON=1,
GRAV_LOW=2,
GRAV_ZERO=3,
},{
__index=function(c,d)a("fx.Enum.GravityLevel has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.GravityLevel is read-only",2)end,
})]],
["shared/enums/HeadlightColors.lua"]=[[
local a,b=error,tostring
return setmetatable({
Default=255,
White=0,
Blue=1,
ElectricBlue=2,
MintGreen=3,
LimeGreen=4,
Yellow=5,
GoldenShower=6,
Orange=7,
Red=8,
PonyPink=9,
HotPink=10,
Purple=11,
Blacklight=12,
},{
__index=function(c,d)a("fx.Enum.HeadlightColors has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.HeadlightColors is read-only",2)end,
})]],
["shared/enums/HeliMissionFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
None=0,
AttainRequestedOrientation=1,
DontModifyOrientation=2,
DontModifyPitch=4,
DontModifyThrottle=8,
DontModifyRoll=16,
LandOnArrival=32,
DontDoAvoidance=64,
StartEngineImmediately=128,
ForceHeightMapAvoidance=256,
DontClampProbesToDestination=512,
EnableTimeslicingWhenPossible=1024,
CircleOppositeDirection=2048,
MaintainHeightAboveTerrain=4096,
IgnoreHiddenEntitiesDuringLand=8192,
DisableAllHeightMapAvoidance=16384,
HeightMapOnlyAvoidance=320,
},{
__index=function(c,d)a("fx.Enum.HeliMissionFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.HeliMissionFlags is read-only",2)end,
})]],
["shared/enums/HornTypes.lua"]=[[
local a,b=error,tostring
return setmetatable({
NORMAL=1330140148,
HELDDOWN=-2087385909,
AGGRESSIVE=-92810745,
},{
__index=function(c,d)a("fx.Enum.HornTypes has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.HornTypes is read-only",2)end,
})]],
["shared/enums/HudColours.lua"]=[[
local a,b=error,tostring
return setmetatable({
HUD_COLOUR_PURE_WHITE=0,
HUD_COLOUR_WHITE=1,
HUD_COLOUR_BLACK=2,
HUD_COLOUR_GREY=3,
HUD_COLOUR_GREYLIGHT=4,
HUD_COLOUR_GREYDARK=5,
HUD_COLOUR_RED=6,
HUD_COLOUR_REDLIGHT=7,
HUD_COLOUR_REDDARK=8,
HUD_COLOUR_BLUE=9,
HUD_COLOUR_BLUELIGHT=10,
HUD_COLOUR_BLUEDARK=11,
HUD_COLOUR_YELLOW=12,
HUD_COLOUR_YELLOWLIGHT=13,
HUD_COLOUR_YELLOWDARK=14,
HUD_COLOUR_ORANGE=15,
HUD_COLOUR_ORANGELIGHT=16,
HUD_COLOUR_ORANGEDARK=17,
HUD_COLOUR_GREEN=18,
HUD_COLOUR_GREENLIGHT=19,
HUD_COLOUR_GREENDARK=20,
HUD_COLOUR_PURPLE=21,
HUD_COLOUR_PURPLELIGHT=22,
HUD_COLOUR_PURPLEDARK=23,
HUD_COLOUR_PINK=24,
HUD_COLOUR_STAR=25,
HUD_COLOUR_STARLIGHT=26,
HUD_COLOUR_STARDARK=27,
HUD_COLOUR_NET_PLAYER1=28,
HUD_COLOUR_NET_PLAYER2=29,
HUD_COLOUR_NET_PLAYER3=30,
HUD_COLOUR_NET_PLAYER4=31,
HUD_COLOUR_NET_PLAYER5=32,
HUD_COLOUR_NET_PLAYER6=33,
HUD_COLOUR_NET_PLAYER7=34,
HUD_COLOUR_NET_PLAYER8=35,
HUD_COLOUR_NET_PLAYER9=36,
HUD_COLOUR_NET_PLAYER10=37,
HUD_COLOUR_NET_PLAYER11=38,
HUD_COLOUR_NET_PLAYER12=39,
HUD_COLOUR_NET_PLAYER13=40,
HUD_COLOUR_NET_PLAYER14=41,
HUD_COLOUR_NET_PLAYER15=42,
HUD_COLOUR_NET_PLAYER16=43,
HUD_COLOUR_NET_PLAYER17=44,
HUD_COLOUR_NET_PLAYER18=45,
HUD_COLOUR_NET_PLAYER19=46,
HUD_COLOUR_NET_PLAYER20=47,
HUD_COLOUR_NET_PLAYER21=48,
HUD_COLOUR_NET_PLAYER22=49,
HUD_COLOUR_NET_PLAYER23=50,
HUD_COLOUR_NET_PLAYER24=51,
HUD_COLOUR_NET_PLAYER25=52,
HUD_COLOUR_NET_PLAYER26=53,
HUD_COLOUR_NET_PLAYER27=54,
HUD_COLOUR_NET_PLAYER28=55,
HUD_COLOUR_NET_PLAYER29=56,
HUD_COLOUR_NET_PLAYER30=57,
HUD_COLOUR_NET_PLAYER31=58,
HUD_COLOUR_NET_PLAYER32=59,
HUD_COLOUR_SIMPLEBLIP_DEFAULT=60,
HUD_COLOUR_MENU_BLUE=61,
HUD_COLOUR_MENU_GREY_LIGHT=62,
HUD_COLOUR_MENU_BLUE_EXTRA_DARK=63,
HUD_COLOUR_MENU_YELLOW=64,
HUD_COLOUR_MENU_YELLOW_DARK=65,
HUD_COLOUR_MENU_GREEN=66,
HUD_COLOUR_MENU_GREY=67,
HUD_COLOUR_MENU_GREY_DARK=68,
HUD_COLOUR_MENU_HIGHLIGHT=69,
HUD_COLOUR_MENU_STANDARD=70,
HUD_COLOUR_MENU_DIMMED=71,
HUD_COLOUR_MENU_EXTRA_DIMMED=72,
HUD_COLOUR_BRIEF_TITLE=73,
HUD_COLOUR_MID_GREY_MP=74,
HUD_COLOUR_NET_PLAYER1_DARK=75,
HUD_COLOUR_NET_PLAYER2_DARK=76,
HUD_COLOUR_NET_PLAYER3_DARK=77,
HUD_COLOUR_NET_PLAYER4_DARK=78,
HUD_COLOUR_NET_PLAYER5_DARK=79,
HUD_COLOUR_NET_PLAYER6_DARK=80,
HUD_COLOUR_NET_PLAYER7_DARK=81,
HUD_COLOUR_NET_PLAYER8_DARK=82,
HUD_COLOUR_NET_PLAYER9_DARK=83,
HUD_COLOUR_NET_PLAYER10_DARK=84,
HUD_COLOUR_NET_PLAYER11_DARK=85,
HUD_COLOUR_NET_PLAYER12_DARK=86,
HUD_COLOUR_NET_PLAYER13_DARK=87,
HUD_COLOUR_NET_PLAYER14_DARK=88,
HUD_COLOUR_NET_PLAYER15_DARK=89,
HUD_COLOUR_NET_PLAYER16_DARK=90,
HUD_COLOUR_NET_PLAYER17_DARK=91,
HUD_COLOUR_NET_PLAYER18_DARK=92,
HUD_COLOUR_NET_PLAYER19_DARK=93,
HUD_COLOUR_NET_PLAYER20_DARK=94,
HUD_COLOUR_NET_PLAYER21_DARK=95,
HUD_COLOUR_NET_PLAYER22_DARK=96,
HUD_COLOUR_NET_PLAYER23_DARK=97,
HUD_COLOUR_NET_PLAYER24_DARK=98,
HUD_COLOUR_NET_PLAYER25_DARK=99,
HUD_COLOUR_NET_PLAYER26_DARK=100,
HUD_COLOUR_NET_PLAYER27_DARK=101,
HUD_COLOUR_NET_PLAYER28_DARK=102,
HUD_COLOUR_NET_PLAYER29_DARK=103,
HUD_COLOUR_NET_PLAYER30_DARK=104,
HUD_COLOUR_NET_PLAYER31_DARK=105,
HUD_COLOUR_NET_PLAYER32_DARK=106,
HUD_COLOUR_BRONZE=107,
HUD_COLOUR_SILVER=108,
HUD_COLOUR_GOLD=109,
HUD_COLOUR_PLATINUM=110,
HUD_COLOUR_GANG1=111,
HUD_COLOUR_GANG2=112,
HUD_COLOUR_GANG3=113,
HUD_COLOUR_GANG4=114,
HUD_COLOUR_SAME_CREW=115,
HUD_COLOUR_FREEMODE=116,
HUD_COLOUR_PAUSE_BG=117,
HUD_COLOUR_FRIENDLY=118,
HUD_COLOUR_ENEMY=119,
HUD_COLOUR_LOCATION=120,
HUD_COLOUR_PICKUP=121,
HUD_COLOUR_PAUSE_SINGLEPLAYER=122,
HUD_COLOUR_FREEMODE_DARK=123,
HUD_COLOUR_INACTIVE_MISSION=124,
HUD_COLOUR_DAMAGE=125,
HUD_COLOUR_PINKLIGHT=126,
HUD_COLOUR_PM_MITEM_HIGHLIGHT=127,
HUD_COLOUR_SCRIPT_VARIABLE=128,
HUD_COLOUR_YOGA=129,
HUD_COLOUR_TENNIS=130,
HUD_COLOUR_GOLF=131,
HUD_COLOUR_SHOOTING_RANGE=132,
HUD_COLOUR_FLIGHT_SCHOOL=133,
HUD_COLOUR_NORTH_BLUE=134,
HUD_COLOUR_SOCIAL_CLUB=135,
HUD_COLOUR_PLATFORM_BLUE=136,
HUD_COLOUR_PLATFORM_GREEN=137,
HUD_COLOUR_PLATFORM_GREY=138,
HUD_COLOUR_FACEBOOK_BLUE=139,
HUD_COLOUR_INGAME_BG=140,
HUD_COLOUR_DARTS=141,
HUD_COLOUR_WAYPOINT=142,
HUD_COLOUR_MICHAEL=143,
HUD_COLOUR_FRANKLIN=144,
HUD_COLOUR_TREVOR=145,
HUD_COLOUR_GOLF_P1=146,
HUD_COLOUR_GOLF_P2=147,
HUD_COLOUR_GOLF_P3=148,
HUD_COLOUR_GOLF_P4=149,
HUD_COLOUR_WAYPOINTLIGHT=150,
HUD_COLOUR_WAYPOINTDARK=151,
HUD_COLOUR_PANEL_LIGHT=152,
HUD_COLOUR_MICHAEL_DARK=153,
HUD_COLOUR_FRANKLIN_DARK=154,
HUD_COLOUR_TREVOR_DARK=155,
HUD_COLOUR_OBJECTIVE_ROUTE=156,
HUD_COLOUR_PAUSEMAP_TINT=157,
HUD_COLOUR_PAUSE_DESELECT=158,
HUD_COLOUR_PM_WEAPONS_PURCHASABLE=159,
HUD_COLOUR_PM_WEAPONS_LOCKED=160,
HUD_COLOUR_END_SCREEN_BG=161,
HUD_COLOUR_CHOP=162,
HUD_COLOUR_PAUSEMAP_TINT_HALF=163,
HUD_COLOUR_NORTH_BLUE_OFFICIAL=164,
HUD_COLOUR_SCRIPT_VARIABLE_2=165,
HUD_COLOUR_H=166,
HUD_COLOUR_HDARK=167,
HUD_COLOUR_T=168,
HUD_COLOUR_TDARK=169,
HUD_COLOUR_HSHARD=170,
HUD_COLOUR_CONTROLLER_MICHAEL=171,
HUD_COLOUR_CONTROLLER_FRANKLIN=172,
HUD_COLOUR_CONTROLLER_TREVOR=173,
HUD_COLOUR_CONTROLLER_CHOP=174,
HUD_COLOUR_VIDEO_EDITOR_VIDEO=175,
HUD_COLOUR_VIDEO_EDITOR_AUDIO=176,
HUD_COLOUR_VIDEO_EDITOR_TEXT=177,
HUD_COLOUR_HB_BLUE=178,
HUD_COLOUR_HB_YELLOW=179,
HUD_COLOUR_VIDEO_EDITOR_SCORE=180,
HUD_COLOUR_VIDEO_EDITOR_AUDIO_FADEOUT=181,
HUD_COLOUR_VIDEO_EDITOR_TEXT_FADEOUT=182,
HUD_COLOUR_VIDEO_EDITOR_SCORE_FADEOUT=183,
HUD_COLOUR_HEIST_BACKGROUND=184,
HUD_COLOUR_VIDEO_EDITOR_AMBIENT=185,
HUD_COLOUR_VIDEO_EDITOR_AMBIENT_FADEOUT=186,
HUD_COLOUR_GANG_BOSS=187,
HUD_COLOUR_GOON=188,
HUD_COLOUR_BOSS=189,
HUD_COLOUR_LOW_FLOW=190,
HUD_COLOUR_LOW_FLOW_DARK=191,
HUD_COLOUR_G1=192,
HUD_COLOUR_G2=193,
HUD_COLOUR_G3=194,
HUD_COLOUR_G4=195,
HUD_COLOUR_G5=196,
HUD_COLOUR_G6=197,
HUD_COLOUR_G7=198,
HUD_COLOUR_G8=199,
HUD_COLOUR_G9=200,
HUD_COLOUR_G10=201,
HUD_COLOUR_G11=202,
HUD_COLOUR_G12=203,
HUD_COLOUR_G13=204,
HUD_COLOUR_G14=205,
HUD_COLOUR_G15=206,
HUD_COLOUR_ADVERSARY=207,
HUD_COLOUR_DEGEN_RED=208,
HUD_COLOUR_DEGEN_YELLOW=209,
HUD_COLOUR_DEGEN_GREEN=210,
HUD_COLOUR_DEGEN_CYAN=211,
HUD_COLOUR_DEGEN_BLUE=212,
HUD_COLOUR_DEGEN_MAGENTA=213,
HUD_COLOUR_STUNT_1=214,
HUD_COLOUR_STUNT_2=215,
HUD_COLOUR_SPECIAL_RACE_SERIES=216,
HUD_COLOUR_SPECIAL_RACE_SERIES_DARK=217,
HUD_COLOUR_CS=218,
HUD_COLOUR_CS_DARK=219,
HUD_COLOUR_TECH_GREEN=220,
HUD_COLOUR_TECH_GREEN_DARK=221,
HUD_COLOUR_TECH_RED=222,
HUD_COLOUR_TECH_GREEN_VERY_DARK=223,
HUD_COLOUR_PLACEHOLDER_01=224,
HUD_COLOUR_PLACEHOLDER_02=225,
HUD_COLOUR_PLACEHOLDER_03=226,
HUD_COLOUR_PLACEHOLDER_04=227,
HUD_COLOUR_PLACEHOLDER_05=228,
HUD_COLOUR_PLACEHOLDER_06=229,
HUD_COLOUR_PLACEHOLDER_07=230,
HUD_COLOUR_PLACEHOLDER_08=231,
HUD_COLOUR_PLACEHOLDER_09=232,
HUD_COLOUR_PLACEHOLDER_10=233,
HUD_COLOUR_JUNK_ENERGY=234,
},{
__index=function(c,d)a("fx.Enum.HudColours has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.HudColours is read-only",2)end,
})]],
["shared/enums/HudIndexes.lua"]=[[
local a,b=error,tostring
return setmetatable({
HELP_TEXT=0,
FLOATING_HELP_TEXT_1=1,
FLOATING_HELP_TEXT_2=2,
},{
__index=function(c,d)a("fx.Enum.HudIndexes has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.HudIndexes is read-only",2)end,
})]],
["shared/enums/IkPart.lua"]=[[
local a,b=error,tostring
return setmetatable({
IK_PART_INVALID=0,
IK_PART_HEAD=1,
IK_PART_SPINE=2,
IK_PART_ARM_LEFT=3,
IK_PART_ARM_RIGHT=4,
IK_PART_LEG_LEFT=5,
IK_PART_LEG_RIGHT=6,
},{
__index=function(c,d)a("fx.Enum.IkPart has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.IkPart is read-only",2)end,
})]],
["shared/enums/IkTargetFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
ITF_DEFAULT=0,
ITF_ARM_TARGET_WRT_HANDBON=1,
ITF_ARM_TARGET_WRT_POINTHELPER=2,
ITF_ARM_TARGET_WRT_IKHELPE=4,
ITF_IK_TAG_MODE_NORMAL=8,
ITF_IK_TAG_MODE_ALLOW=16,
ITF_IK_TAG_MODE_BLOCK=32,
ITF_ARM_USE_ORIENTATION=64,
},{
__index=function(c,d)a("fx.Enum.IkTargetFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.IkTargetFlags is read-only",2)end,
})]],
["shared/enums/InstructionalButtonTypes.lua"]=[[
local a,b=error,tostring
return setmetatable({
NONE=0,
SELECT=1,
OK=2,
YES=4,
BACK=8,
BACK_SELECT=9,
BACK_OK=10,
BACK_YES=12,
CANCEL=16,
CANCEL_SELECT=17,
CANCEL_OK=18,
CANCEL_YES=20,
NO=32,
NO_SELECT=33,
NO_OK=34,
YES_NO=36,
RETRY=64,
RETRY_SELECT=65,
RETRY_OK=66,
RETRY_YES=68,
RETRY_BACK=72,
RETRY_BACK_SELECT=73,
RETRY_BACK_OK=74,
RETRY_BACK_YES=76,
RETRY_CANCEL=80,
RETRY_CANCEL_SELECT=81,
RETRY_CANCEL_OK=82,
RETRY_CANCEL_YES=84,
SKIP=256,
SKIP_SELECT=257,
SKIP_OK=258,
SKIP_YES=260,
SKIP_BACK=264,
SKIP_BACK_SELECT=265,
SKIP_BACK_OK=266,
SKIP_BACK_YES=268,
SKIP_CANCEL=272,
SKIP_CANCEL_SELECT=273,
SKIP_CANCEL_OK=274,
SKIP_CANCEL_YES=276,
CONTINUE=16384,
BACK_CONTINUE=16392,
CANCEL_CONTINUE=16400,
LOADING_SPINNER=134217728,
SELECT_LOADING_SPINNER=134217729,
OK_LOADING_SPINNER=134217730,
YES_LOADING_SPINNER=134217732,
BACK_LOADING_SPINNER=134217736,
BACK_SELECT_LOADING_SPINNER=134217737,
BACK_OK_LOADING_SPINNER=134217738,
BACK_YES_LOADING_SPINNER=134217740,
CANCEL_LOADING_SPINNER=134217744,
CANCEL_SELECT_LOADING_SPINNER=134217745,
CANCEL_OK_LOADING_SPINNER=134217746,
CANCEL_YES_LOADING_SPINNER=134217748,
},{
__index=function(c,d)a("fx.Enum.InstructionalButtonTypes has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.InstructionalButtonTypes is read-only",2)end,
})]],
["shared/enums/KeyboardType.lua"]=[[
local a,b=error,tostring
return setmetatable({
ONSCREEN_KEYBOARD_ENGLISH=0,
ONSCREEN_KEYBOARD_LOCALISED=1,
ONSCREEN_KEYBOARD_PASSWORD=2,
ONSCREEN_KEYBOARD_GAMERTAG=3,
ONSCREEN_KEYBOARD_EMAIL=4,
ONSCREEN_KEYBOARD_BASIC_ENGLISH=5,
ONSCREEN_KEYBOARD_FILENAME=6,
},{
__index=function(c,d)a("fx.Enum.KeyboardType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.KeyboardType is read-only",2)end,
})]],
["shared/enums/LogLevel.lua"]=[[
local a,b=error,tostring
return setmetatable({
Debug=0,
Info=1,
Success=2,
Warn=3,
Error=4,
Fatal=5,
None=6,
},{
__index=function(c,d)a("fx.Enum.LogLevel has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.LogLevel is read-only",2)end,
})]],
["shared/enums/MousePointerStyle.lua"]=[[
local a,b=error,tostring
return setmetatable({
ARROW=1,
ARROW_DIMMED=2,
HAND_OPEN=3,
HAND_GRAB=4,
HAND_MIDDLE_FINGER=5,
ARROW_LEFT=6,
ARROW_RIGHT=7,
ARROW_UP=8,
ARROW_DOWN=9,
ARROW_TRIMMING=10,
ARROW_PLUS=11,
ARROW_MINUS=12,
},{
__index=function(c,d)a("fx.Enum.MousePointerStyle has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.MousePointerStyle is read-only",2)end,
})]],
["shared/enums/MpGamerTagComponent.lua"]=[[
local a,b=error,tostring
return setmetatable({
MP_TAG_GAMER_NAME=0,
MP_TAG_CREW_TAG=1,
MP_TAG_HEALTH_ARMOUR=2,
MP_TAG_BIG_TEXT=3,
MP_TAG_AUDIO_ICON=4,
MP_TAG_USING_MENU=5,
MP_TAG_PASSIVE_MODE=6,
MP_TAG_WANTED_STARS=7,
MP_TAG_DRIVER=8,
MP_TAG_CO_DRIVER=9,
MP_TAG_TAGGED=10,
MP_TAG_GAMER_NAME_NEARBY=11,
MP_TAG_ARROW=12,
MP_TAG_PACKAGES=13,
MP_TAG_INV_IF_PED_FOLLOWING=14,
MP_TAG_RANK_TEXT=15,
MP_TAG_TYPING=16,
MP_TAG_BAG_LARGE=17,
MP_TAG_ARROW_18=18,
MP_TAG_GANG_CEO=19,
MP_TAG_GANG_BIKER=20,
MP_TAG_BIKER_ARROW=21,
MP_TAG_MC_ROLE_PRESIDENT=22,
MP_TAG_MC_ROLE_VICE_PRESIDENT=23,
MP_TAG_MC_ROLE_ROAD_CAPTAIN=24,
MP_TAG_MC_ROLE_SARGEANT=25,
MP_TAG_MC_ROLE_ENFORCER=26,
MP_TAG_MC_ROLE_PROSPECT=27,
MP_TAG_TRANSMITTER=28,
MP_TAG_BOMB=29,
},{
__index=function(c,d)a("fx.Enum.MpGamerTagComponent has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.MpGamerTagComponent is read-only",2)end,
})]],
["shared/enums/MpSettingSpawn.lua"]=[[
local a,b=error,tostring
return setmetatable({
MP_SETTING_SPAWN_NULL=0,
MP_SETTING_SPAWN_PROPERTY=1,
MP_SETTING_SPAWN_LAST_POSITION=2,
MP_SETTING_SPAWN_GARAGE=3,
MP_SETTING_SPAWN_RANDOM=4,
MP_SETTING_SPAWN_PRIVATE_YACHT=5,
MP_SETTING_SPAWN_OFFICE=6,
MP_SETTING_SPAWN_CLUBHOUSE=7,
MP_SETTING_SPAWN_IE_WAREHOUSE=8,
MP_SETTING_SPAWN_BUNKER=9,
MP_SETTING_SPAWN_HANGAR=10,
MP_SETTING_SPAWN_DEFUNCT_BASE=11,
MP_SETTING_SPAWN_NIGHTCLUB=12,
MP_SETTING_SPAWN_ARENA_GARAGE=13,
MP_SETTING_SPAWN_CASINO_APARTMENT=14,
MP_SETTING_SPAWN_ARCADE=15,
MP_SETTING_SPAWN_SUBMARINE=16,
MP_SETTING_SPAWN_CAR_MEET=17,
MP_SETTING_SPAWN_AUTO_SHOP=18,
MP_SETTING_SPAWN_FIXER_HQ=19,
MP_SETTING_SPAWN_MAX=20,
},{
__index=function(c,d)a("fx.Enum.MpSettingSpawn has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.MpSettingSpawn is read-only",2)end,
})]],
["shared/enums/NMFallType.lua"]=[[
local a,b=error,tostring
return setmetatable({
TYPE_FROM_HIGH=0,
TYPE_OVER_WALL=1,
TYPE_DOWN_STAIRS=2,
TYPE_DIE_TYPES=3,
TYPE_DIE_FROM_HIGH=4,
TYPE_DIE_OVER_WALL=5,
TYPE_DIE_DOWN_STAIRS=6,
},{
__index=function(c,d)a("fx.Enum.NMFallType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.NMFallType is read-only",2)end,
})]],
["shared/enums/NavScriptFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
ENAV_DEFAULT=0,
ENAV_NO_STOPPING=1,
ENAV_ADV_SLIDE_TO_COORD_AND_ACHIEVE_HEADING_AT_END=2,
ENAV_GO_FAR_AS_POSSIBLE_IF_TARGET_NAVMESH_NOT_LOADED=4,
ENAV_ALLOW_SWIMMING_UNDERWATER=8,
ENAV_KEEP_TO_PAVEMENTS=16,
ENAV_NEVER_ENTER_WATER=32,
ENAV_DONT_AVOID_OBJECTS=64,
ENAV_ADVANCED_USE_MAX_SLOPE_NAVIGABLE=128,
ENAV_STOP_EXACTLY=512,
ENAV_ACCURATE_WALKRUN_START=1024,
ENAV_DONT_AVOID_PEDS=2048,
ENAV_DONT_ADJUST_TARGET_POSITION=4096,
ENAV_SUPPRESS_EXACT_STOP=8192,
ENAV_ADVANCED_USE_CLAMP_MAX_SEARCH_DISTANCE=16384,
ENAV_PULL_FROM_EDGE_EXTRA=32768,
},{
__index=function(c,d)a("fx.Enum.NavScriptFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.NavScriptFlags is read-only",2)end,
})]],
["shared/enums/NetObjEntityType.lua"]=[[
local a,b=error,tostring
return setmetatable({
Automobile=0,
Bike=1,
Boat=2,
Door=3,
Heli=4,
Object=5,
Ped=6,
Pickup=7,
PickupPlacement=8,
Plane=9,
Submarine=10,
Player=11,
Trailer=12,
Train=13,
},{
__index=function(c,d)a("fx.Enum.NetObjEntityType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.NetObjEntityType is read-only",2)end,
})]],
["shared/enums/NodeFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
NONE=0,
INCLUDE_SWITCHED_OFF_NODES=1,
INCLUDE_BOAT_NODES=2,
IGNORE_SLIPLANES=4,
IGNORE_SWITCHED_OFF_DEAD_ENDS=8,
},{
__index=function(c,d)a("fx.Enum.NodeFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.NodeFlags is read-only",2)end,
})]],
["shared/enums/OSKStatus.lua"]=[[
local a,b=error,tostring
return setmetatable({
OSK_INVALID=-1,
OSK_PENDING=0,
OSK_SUCCESS=1,
OSK_CANCELLED=2,
OSK_FAILED=3,
},{
__index=function(c,d)a("fx.Enum.OSKStatus has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.OSKStatus is read-only",2)end,
})]],
["shared/enums/ObjectPaintVariants.lua"]=[[
local a,b=error,tostring
return setmetatable({
Pacific=0,
Azure=1,
Nautical=2,
Continental=3,
Battleship=4,
Intrepid=5,
Uniform=6,
Classico=7,
Mediterranean=8,
Command=9,
Mariner=10,
Ruby=11,
Vintage=12,
Pristine=13,
Merchant=14,
Voyager=15,
},{
__index=function(c,d)a("fx.Enum.ObjectPaintVariants has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.ObjectPaintVariants is read-only",2)end,
})]],
["shared/enums/PadType.lua"]=[[
local a,b=error,tostring
return setmetatable({
PLAYER_CONTROL=0,
CAMERA_CONTROL=1,
FRONTEND_CONTRO=2,
},{
__index=function(c,d)a("fx.Enum.PadType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PadType is read-only",2)end,
})]],
["shared/enums/PauseMenuState.lua"]=[[
local a,b=error,tostring
return setmetatable({
PM_INACTIVE=0,
PM_STARTING_UP=5,
PM_RESTARTING=10,
PM_READY=15,
PM_IN_STORE=20,
PM_IN_SC_MENU=25,
PM_SHUTTING_DOWN=30,
PM_IN_VIDEOEDITOR=35,
},{
__index=function(c,d)a("fx.Enum.PauseMenuState has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PauseMenuState is read-only",2)end,
})]],
["shared/enums/PedBoneId.lua"]=[[
local a,b=error,tostring
return setmetatable({
SKEL_ROOT=0,
SKEL_Pelvis=11816,
SKEL_L_Thigh=58271,
SKEL_L_Calf=63931,
SKEL_L_Foot=14201,
SKEL_L_Toe0=2108,
EO_L_Foot=33989,
EO_L_Toe=26813,
IK_L_Foot=65245,
PH_L_Foot=57717,
MH_L_Knee=46078,
SKEL_R_Thigh=51826,
SKEL_R_Calf=36864,
SKEL_R_Foot=52301,
SKEL_R_Toe0=20781,
EO_R_Foot=4246,
EO_R_Toe=29027,
IK_R_Foot=35502,
PH_R_Foot=24806,
MH_R_Knee=16335,
RB_L_ThighRoll=23639,
RB_R_ThighRoll=6442,
SKEL_Spine_Root=57597,
SKEL_Spine0=23553,
SKEL_Spine1=24816,
SKEL_Spine2=24817,
SKEL_Spine3=24818,
SKEL_L_Clavicle=64729,
SKEL_L_UpperArm=45509,
SKEL_L_Forearm=61163,
SKEL_L_Hand=18905,
SKEL_L_Finger00=26610,
SKEL_L_Finger01=4089,
SKEL_L_Finger02=4090,
SKEL_L_Finger10=26611,
SKEL_L_Finger11=4169,
SKEL_L_Finger12=4170,
SKEL_L_Finger20=26612,
SKEL_L_Finger21=4185,
SKEL_L_Finger22=4186,
SKEL_L_Finger30=26613,
SKEL_L_Finger31=4137,
SKEL_L_Finger32=4138,
SKEL_L_Finger40=26614,
SKEL_L_Finger41=4153,
SKEL_L_Finger42=4154,
PH_L_Hand=60309,
IK_L_Hand=36029,
RB_L_ForeArmRoll=61007,
RB_L_ArmRoll=5232,
MH_L_Elbow=22711,
SKEL_R_Clavicle=10706,
SKEL_R_UpperArm=40269,
SKEL_R_Forearm=28252,
SKEL_R_Hand=57005,
SKEL_R_Finger00=58866,
SKEL_R_Finger01=64016,
SKEL_R_Finger02=64017,
SKEL_R_Finger10=58867,
SKEL_R_Finger11=64096,
SKEL_R_Finger12=64097,
SKEL_R_Finger20=58868,
SKEL_R_Finger21=64112,
SKEL_R_Finger22=64113,
SKEL_R_Finger30=58869,
SKEL_R_Finger31=64064,
SKEL_R_Finger32=64065,
SKEL_R_Finger40=58870,
SKEL_R_Finger41=64080,
SKEL_R_Finger42=64081,
PH_R_Hand=28422,
IK_R_Hand=6286,
RB_R_ForeArmRoll=43810,
RB_R_ArmRoll=37119,
MH_R_Elbow=2992,
SKEL_Neck_1=39317,
SKEL_Head=31086,
IK_Head=12844,
FACIAL_facialRoot=65068,
FB_L_Brow_Out_000=58331,
FB_L_Lid_Upper_000=45750,
FB_L_Eye_000=25260,
FB_L_CheekBone_000=21550,
FB_L_Lip_Corner_000=29868,
FB_R_Lid_Upper_000=43536,
FB_R_Eye_000=27474,
FB_R_CheekBone_000=19336,
FB_R_Brow_Out_000=1356,
FB_R_Lip_Corner_000=11174,
FB_Brow_Centre_000=37193,
FB_UpperLipRoot_000=20178,
FB_UpperLip_000=61839,
FB_L_Lip_Top_000=20279,
FB_R_Lip_Top_000=17719,
FB_Jaw_000=46240,
FB_LowerLipRoot_000=17188,
FB_LowerLip_000=20623,
FB_L_Lip_Bot_000=47419,
FB_R_Lip_Bot_000=49979,
FB_Tongue_000=47495,
RB_Neck_1=35731,
SPR_L_Breast=64654,
SPR_R_Breast=34911,
IK_Root=56604,
SKEL_Neck_2=24532,
SKEL_Pelvis1=53251,
SKEL_PelvisRoot=17916,
SKEL_SADDLE=38180,
MH_L_CalfBack=4115,
MH_L_ThighBack=24589,
SM_L_Skirt=50201,
MH_R_CalfBack=45075,
MH_R_ThighBack=20899,
SM_R_Skirt=30482,
SM_M_BackSkirtRoll=3515,
SM_L_BackSkirtRoll=16562,
SM_R_BackSkirtRoll=49473,
SM_M_FrontSkirtRoll=52667,
SM_L_FrontSkirtRoll=39785,
SM_R_FrontSkirtRoll=34545,
SM_CockNBalls_ROOT=50813,
SM_CockNBalls=40244,
MH_L_Finger00=35939,
MH_L_FingerBulge00=24504,
MH_L_Finger10=35923,
MH_L_FingerTop00=41540,
MH_L_HandSide=51082,
MH_Watch=10040,
MH_L_Sleeve=37692,
MH_R_Finger00=11363,
MH_R_FingerBulge00=27064,
MH_R_Finger10=11347,
MH_R_FingerTop00=61259,
MH_R_HandSide=26875,
MH_R_Sleeve=37596,
FACIAL_jaw=2849,
FACIAL_underChin=35477,
FACIAL_L_underChin=9038,
FACIAL_chin=46456,
FACIAL_chinSkinBottom=39100,
FACIAL_L_chinSkinBottom=16015,
FACIAL_R_chinSkinBottom=40591,
FACIAL_tongueA=19068,
FACIAL_tongueB=19069,
FACIAL_tongueC=19070,
FACIAL_tongueD=19071,
FACIAL_tongueE=19072,
FACIAL_L_tongueE=13810,
FACIAL_R_tongueE=12274,
FACIAL_L_tongueD=13809,
FACIAL_R_tongueD=12273,
FACIAL_L_tongueC=13808,
FACIAL_R_tongueC=12272,
FACIAL_L_tongueB=13807,
FACIAL_R_tongueB=12271,
FACIAL_L_tongueA=13806,
FACIAL_R_tongueA=12270,
FACIAL_chinSkinTop=29222,
FACIAL_L_chinSkinTop=16051,
FACIAL_chinSkinMid=35226,
FACIAL_L_chinSkinMid=17447,
FACIAL_L_chinSide=19038,
FACIAL_R_chinSkinMid=62895,
FACIAL_R_chinSkinTop=61499,
FACIAL_R_chinSide=43614,
FACIAL_R_underChin=11252,
FACIAL_L_lipLowerSDK=47585,
FACIAL_L_lipLowerAnalog=9290,
FACIAL_L_lipLowerThicknessV=51017,
FACIAL_L_lipLowerThicknessH=50811,
FACIAL_lipLowerSDK=29317,
FACIAL_lipLowerAnalog=55675,
FACIAL_lipLowerThicknessV=50619,
FACIAL_lipLowerThicknessH=50669,
FACIAL_R_lipLowerSDK=41012,
FACIAL_R_lipLowerAnalog=49881,
FACIAL_R_lipLowerThicknessV=50921,
FACIAL_R_lipLowerThicknessH=50907,
FACIAL_nose=8433,
FACIAL_L_nostril=29474,
FACIAL_L_nostrilThickness=49503,
FACIAL_noseLower=57434,
FACIAL_L_noseLowerThickness=31189,
FACIAL_R_noseLowerThickness=31093,
FACIAL_noseTip=27232,
FACIAL_R_nostril=31010,
FACIAL_R_nostrilThickness=14079,
FACIAL_noseUpper=41039,
FACIAL_L_noseUpper=8120,
FACIAL_noseBridge=39843,
FACIAL_L_nasolabialFurrow=23242,
FACIAL_L_nasolabialBulge=52600,
FACIAL_L_cheekLower=26887,
FACIAL_L_cheekLowerBulge1=58363,
FACIAL_L_cheekLowerBulge2=58364,
FACIAL_L_cheekInner=59307,
FACIAL_L_cheekOuter=33121,
FACIAL_L_eyesackLower=30491,
FACIAL_L_eyeball=5956,
FACIAL_L_eyelidLower=39308,
FACIAL_L_eyelidLowerOuterSDK=65100,
FACIAL_L_eyelidLowerOuterAnalog=47530,
FACIAL_L_eyelashLowerOuter=55286,
FACIAL_L_eyelidLowerInnerSDK=61777,
FACIAL_L_eyelidLowerInnerAnalog=33346,
FACIAL_L_eyelashLowerInner=19663,
FACIAL_L_eyelidUpper=38849,
FACIAL_L_eyelidUpperOuterSDK=44821,
FACIAL_L_eyelidUpperOuterAnalog=26618,
FACIAL_L_eyelashUpperOuter=10167,
FACIAL_L_eyelidUpperInnerSDK=54081,
FACIAL_L_eyelidUpperInnerAnalog=61586,
FACIAL_L_eyelashUpperInner=39711,
FACIAL_L_eyesackUpperOuterBulge=42329,
FACIAL_L_eyesackUpperInnerBulge=12074,
FACIAL_L_eyesackUpperOuterFurrow=50583,
FACIAL_L_eyesackUpperInnerFurrow=21159,
FACIAL_forehead=37400,
FACIAL_L_foreheadInner=2115,
FACIAL_L_foreheadInnerBulge=30332,
FACIAL_L_foreheadOuter=36299,
FACIAL_skull=16929,
FACIAL_foreheadUpper=63446,
FACIAL_L_foreheadUpperInner=53011,
FACIAL_L_foreheadUpperOuter=20635,
FACIAL_R_foreheadUpperInner=52979,
FACIAL_R_foreheadUpperOuter=20603,
FACIAL_L_temple=44921,
FACIAL_L_ear=6621,
FACIAL_L_earLower=24625,
FACIAL_L_masseter=10256,
FACIAL_L_jawRecess=40058,
FACIAL_L_cheekOuterSkin=5285,
FACIAL_R_cheekLower=62311,
FACIAL_R_cheekLowerBulge1=22939,
FACIAL_R_cheekLowerBulge2=22940,
FACIAL_R_masseter=2064,
FACIAL_R_jawRecess=37844,
FACIAL_R_ear=4407,
FACIAL_R_earLower=32817,
FACIAL_R_eyesackLower=30587,
FACIAL_R_nasolabialBulge=54814,
FACIAL_R_cheekOuter=3378,
FACIAL_R_cheekInner=29564,
FACIAL_R_noseUpper=7382,
FACIAL_R_foreheadInner=3651,
FACIAL_R_foreheadInnerBulge=30364,
FACIAL_R_foreheadOuter=36811,
FACIAL_R_cheekOuterSkin=45876,
FACIAL_R_eyesackUpperInnerFurrow=40878,
FACIAL_R_eyesackUpperOuterFurrow=5135,
FACIAL_R_eyesackUpperInnerBulge=41817,
FACIAL_R_eyesackUpperOuterBulge=6905,
FACIAL_R_nasolabialFurrow=11434,
FACIAL_R_temple=44825,
FACIAL_R_eyeball=6468,
FACIAL_R_eyelidUpper=32276,
FACIAL_R_eyelidUpperOuterSDK=45333,
FACIAL_R_eyelidUpperOuterAnalog=62042,
FACIAL_R_eyelashUpperOuter=3594,
FACIAL_R_eyelidUpperInnerSDK=54593,
FACIAL_R_eyelidUpperInnerAnalog=31843,
FACIAL_R_eyelashUpperInner=33138,
FACIAL_R_eyelidLower=32735,
FACIAL_R_eyelidLowerOuterSDK=445,
FACIAL_R_eyelidLowerOuterAnalog=17787,
FACIAL_R_eyelashLowerOuter=48713,
FACIAL_R_eyelidLowerInnerSDK=62289,
FACIAL_R_eyelidLowerInnerAnalog=3603,
FACIAL_R_eyelashLowerInner=13090,
FACIAL_L_lipUpperSDK=36656,
FACIAL_L_lipUpperAnalog=45519,
FACIAL_L_lipUpperThicknessH=14286,
FACIAL_L_lipUpperThicknessV=14524,
FACIAL_lipUpperSDK=6004,
FACIAL_lipUpperAnalog=57444,
FACIAL_lipUpperThicknessH=31123,
FACIAL_lipUpperThicknessV=31105,
FACIAL_L_lipCornerSDK=2844,
FACIAL_L_lipCornerAnalog=58728,
FACIAL_L_lipCornerThicknessUpper=1980,
FACIAL_L_lipCornerThicknessLower=56642,
FACIAL_R_lipUpperSDK=30083,
FACIAL_R_lipUpperAnalog=20943,
FACIAL_R_lipUpperThicknessH=14382,
FACIAL_R_lipUpperThicknessV=14428,
FACIAL_R_lipCornerSDK=2876,
FACIAL_R_lipCornerAnalog=60942,
FACIAL_R_lipCornerThicknessUpper=21699,
FACIAL_R_lipCornerThicknessLower=11194,
MH_MulletRoot=15987,
MH_MulletScaler=41410,
MH_Hair_Scale=50788,
MH_Hair_Crown=5749,
SM_Torch=2262,
FX_Light=35161,
FX_Light_Scale=20536,
FX_Light_Switch=57742,
BagRoot=44297,
BagPivotROOT=47158,
BagPivot=19729,
BagBody=43885,
BagBone_R=2359,
BagBone_L=2449,
SM_LifeSaver_Front=37920,
SM_R_Pouches_ROOT=10594,
SM_R_Pouches=16705,
SM_L_Pouches_ROOT=10754,
SM_L_Pouches=19265,
SM_Suit_Back_Flapper=55853,
SPR_CopRadio=33349,
SM_LifeSaver_Back=8487,
MH_BlushSlider=41166,
SKEL_Tail_01=839,
SKEL_Tail_02=840,
MH_L_Concertina_B=51592,
MH_L_Concertina_A=51591,
MH_R_Concertina_B=51432,
MH_R_Concertina_A=51431,
MH_L_ShoulderBladeRoot=34577,
MH_L_ShoulderBlade=20143,
MH_R_ShoulderBladeRoot=14858,
MH_R_ShoulderBlade=21679,
FB_R_Ear_000=27871,
SPR_R_Ear=25526,
FB_L_Ear_000=25657,
SPR_L_Ear=23312,
FB_TongueA_000=16902,
FB_TongueB_000=16903,
FB_TongueC_000=16904,
SKEL_L_Toe1=7531,
SKEL_R_Toe1=45631,
SKEL_Tail_03=841,
SKEL_Tail_04=842,
SKEL_Tail_05=843,
SPR_Gonads_ROOT=49118,
SPR_Gonads=7168,
FB_L_Brow_Out_001=58331,
FB_L_Lid_Upper_001=45750,
FB_L_Eye_001=25260,
FB_L_CheekBone_001=21550,
FB_L_Lip_Corner_001=29868,
FB_R_Lid_Upper_001=43536,
FB_R_Eye_001=27474,
FB_R_CheekBone_001=19336,
FB_R_Brow_Out_001=1356,
FB_R_Lip_Corner_001=11174,
FB_Brow_Centre_001=37193,
FB_UpperLipRoot_001=20178,
FB_UpperLip_001=61839,
FB_L_Lip_Top_001=20279,
FB_R_Lip_Top_001=17719,
FB_Jaw_001=46240,
FB_LowerLipRoot_001=17188,
FB_LowerLip_001=20623,
FB_L_Lip_Bot_001=47419,
FB_R_Lip_Bot_001=49979,
FB_Tongue_001=47495,
},{
__index=function(c,d)a("fx.Enum.PedBoneId has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedBoneId is read-only",2)end,
})]],
["shared/enums/PedClothes.lua"]=[[
local a,b=error,tostring
return setmetatable({
Mask="mask",
Arms="arms",
Legs="legs",
Bag="bag",
Shoes="shoes",
Neck="neck",
Undershirt="undershirt",
Armor="armor",
Decals="decals",
Top="top",
},{
__index=function(c,d)a("fx.Enum.PedClothes has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedClothes is read-only",2)end,
})]],
["shared/enums/PedCompFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
PV_FLAG_NONE=0,
PV_FLAG_BULKY=1,
PV_FLAG_JOB=2,
PV_FLAG_SUNNY=4,
PV_FLAG_WET=8,
PV_FLAG_COLD=16,
PV_FLAG_NOT_IN_CAR=32,
PV_FLAG_BIKE_ONLY=64,
PV_FLAG_NOT_INDOORS=128,
PV_FLAG_FIRE_RETARDENT=256,
PV_FLAG_ARMOURED=512,
PV_FLAG_LIGHTLY_ARMOURED=1024,
PV_FLAG_HIGH_DETAIL=2048,
PV_FLAG_DEFAULT_HELMET=4096,
PV_FLAG_RANDOM_HELMET=8192,
PV_FLAG_SCRIPT_HELMET=16384,
PV_FLAG_FLIGHT_HELMET=32768,
PV_FLAG_HIDE_IN_FIRST_PERSON=65536,
PV_FLAG_USE_PHYSICS_HAT_2=131072,
PV_FLAG_PILOT_HELMET=262144,
},{
__index=function(c,d)a("fx.Enum.PedCompFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedCompFlags is read-only",2)end,
})]],
["shared/enums/PedConfigFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
CPED_CONFIG_FLAG_CreatedByFactory=0,
CPED_CONFIG_FLAG_CanBeShotInVehicle=1,
CPED_CONFIG_FLAG_NoCriticalHits=2,
CPED_CONFIG_FLAG_DrownsInWater=3,
CPED_CONFIG_FLAG_DrownsInSinkingVehicle=4,
CPED_CONFIG_FLAG_DiesInstantlyWhenSwimming=5,
CPED_CONFIG_FLAG_HasBulletProofVest=6,
CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly=7,
CPED_CONFIG_FLAG_NeverFallOffSkis=8,
CPED_CONFIG_FLAG_NeverEverTargetThisPed=9,
CPED_CONFIG_FLAG_ThisPedIsATargetPriority=10,
CPED_CONFIG_FLAG_TargettableWithNoLos=11,
CPED_CONFIG_FLAG_DoesntListenToPlayerGroupCommands=12,
CPED_CONFIG_FLAG_NeverLeavesGroup=13,
CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead=14,
CPED_CONFIG_FLAG_SetDelayedWeaponAsCurrent=15,
CPED_CONFIG_FLAG_KeepTasksAfterCleanUp=16,
CPED_CONFIG_FLAG_BlockNonTemporaryEvents=17,
CPED_CONFIG_FLAG_HasAScriptBrain=18,
CPED_CONFIG_FLAG_WaitingForScriptBrainToLoad=19,
CPED_CONFIG_FLAG_AllowMedicsToReviveMe=20,
CPED_CONFIG_FLAG_MoneyHasBeenGivenByScript=21,
CPED_CONFIG_FLAG_NotAllowedToCrouch=22,
CPED_CONFIG_FLAG_DeathPickupsPersist=23,
CPED_CONFIG_FLAG_IgnoreSeenMelee=24,
CPED_CONFIG_FLAG_ForceDieIfInjured=25,
CPED_CONFIG_FLAG_DontDragMeOutCar=26,
CPED_CONFIG_FLAG_StayInCarOnJack=27,
CPED_CONFIG_FLAG_ForceDieInCar=28,
CPED_CONFIG_FLAG_GetOutUndriveableVehicle=29,
CPED_CONFIG_FLAG_WillRemainOnBoatAfterMissionEnds=30,
CPED_CONFIG_FLAG_DontStoreAsPersistent=31,
CPED_CONFIG_FLAG_WillFlyThroughWindscreen=32,
CPED_CONFIG_FLAG_DieWhenRagdoll=33,
CPED_CONFIG_FLAG_HasHelmet=34,
CPED_CONFIG_FLAG_UseHelmet=35,
CPED_CONFIG_FLAG_DontTakeOffHelmet=36,
CPED_CONFIG_FLAG_HideInCutscene=37,
CPED_CONFIG_FLAG_PedIsEnemyToPlayer=38,
CPED_CONFIG_FLAG_DisableEvasiveDives=39,
CPED_CONFIG_FLAG_PedGeneratesDeadBodyEvents=40,
CPED_CONFIG_FLAG_DontAttackPlayerWithoutWantedLevel=41,
CPED_CONFIG_FLAG_DontInfluenceWantedLevel=42,
CPED_CONFIG_FLAG_DisablePlayerLockon=43,
CPED_CONFIG_FLAG_DisableLockonToRandomPeds=44,
CPED_CONFIG_FLAG_AllowLockonToFriendlyPlayers=45,
_0xDB115BFA=46,
CPED_CONFIG_FLAG_PedBeingDeleted=47,
CPED_CONFIG_FLAG_BlockWeaponSwitching=48,
CPED_CONFIG_FLAG_BlockGroupPedAimedAtResponse=49,
CPED_CONFIG_FLAG_WillFollowLeaderAnyMeans=50,
CPED_CONFIG_FLAG_BlippedByScript=51,
CPED_CONFIG_FLAG_DrawRadarVisualField=52,
CPED_CONFIG_FLAG_StopWeaponFiringOnImpact=53,
CPED_CONFIG_FLAG_DissableAutoFallOffTests=54,
CPED_CONFIG_FLAG_SteerAroundDeadBodies=55,
CPED_CONFIG_FLAG_ConstrainToNavMesh=56,
CPED_CONFIG_FLAG_SyncingAnimatedProps=57,
CPED_CONFIG_FLAG_IsFiring=58,
CPED_CONFIG_FLAG_WasFiring=59,
CPED_CONFIG_FLAG_IsStanding=60,
CPED_CONFIG_FLAG_WasStanding=61,
CPED_CONFIG_FLAG_InVehicle=62,
CPED_CONFIG_FLAG_OnMount=63,
CPED_CONFIG_FLAG_AttachedToVehicle=64,
CPED_CONFIG_FLAG_IsSwimming=65,
CPED_CONFIG_FLAG_WasSwimming=66,
CPED_CONFIG_FLAG_IsSkiing=67,
CPED_CONFIG_FLAG_IsSitting=68,
CPED_CONFIG_FLAG_KilledByStealth=69,
CPED_CONFIG_FLAG_KilledByTakedown=70,
CPED_CONFIG_FLAG_Knockedout=71,
CPED_CONFIG_FLAG_ClearRadarBlipOnDeath=72,
CPED_CONFIG_FLAG_JustGotOffTrain=73,
CPED_CONFIG_FLAG_JustGotOnTrain=74,
CPED_CONFIG_FLAG_UsingCoverPoint=75,
CPED_CONFIG_FLAG_IsInTheAir=76,
CPED_CONFIG_FLAG_KnockedUpIntoAir=77,
CPED_CONFIG_FLAG_IsAimingGun=78,
CPED_CONFIG_FLAG_HasJustLeftCar=79,
CPED_CONFIG_FLAG_TargetWhenInjuredAllowed=80,
CPED_CONFIG_FLAG_CurrLeftFootCollNM=81,
CPED_CONFIG_FLAG_PrevLeftFootCollNM=82,
CPED_CONFIG_FLAG_CurrRightFootCollNM=83,
CPED_CONFIG_FLAG_PrevRightFootCollNM=84,
CPED_CONFIG_FLAG_HasBeenBumpedInCar=85,
CPED_CONFIG_FLAG_InWaterTaskQuitToClimbLadder=86,
CPED_CONFIG_FLAG_NMTwoHandedWeaponBothHandsConstrained=87,
CPED_CONFIG_FLAG_CreatedBloodPoolTimer=88,
CPED_CONFIG_FLAG_DontActivateRagdollFromAnyPedImpact=89,
CPED_CONFIG_FLAG_GroupPedFailedToEnterCover=90,
CPED_CONFIG_FLAG_AlreadyChattedOnPhone=91,
CPED_CONFIG_FLAG_AlreadyReactedToPedOnRoof=92,
CPED_CONFIG_FLAG_ForcePedLoadCover=93,
CPED_CONFIG_FLAG_BlockCoweringInCover=94,
CPED_CONFIG_FLAG_BlockPeekingInCover=95,
CPED_CONFIG_FLAG_JustLeftCarNotCheckedForDoors=96,
CPED_CONFIG_FLAG_VaultFromCover=97,
CPED_CONFIG_FLAG_AutoConversationLookAts=98,
CPED_CONFIG_FLAG_UsingCrouchedPedCapsule=99,
CPED_CONFIG_FLAG_HasDeadPedBeenReported=100,
CPED_CONFIG_FLAG_ForcedAim=101,
CPED_CONFIG_FLAG_SteersAroundPeds=102,
CPED_CONFIG_FLAG_SteersAroundObjects=103,
CPED_CONFIG_FLAG_OpenDoorArmIK=104,
CPED_CONFIG_FLAG_ForceReload=105,
CPED_CONFIG_FLAG_DontActivateRagdollFromVehicleImpact=106,
CPED_CONFIG_FLAG_DontActivateRagdollFromBulletImpact=107,
CPED_CONFIG_FLAG_DontActivateRagdollFromExplosions=108,
CPED_CONFIG_FLAG_DontActivateRagdollFromFire=109,
CPED_CONFIG_FLAG_DontActivateRagdollFromElectrocution=110,
CPED_CONFIG_FLAG_IsBeingDraggedToSafety=111,
CPED_CONFIG_FLAG_HasBeenDraggedToSafety=112,
CPED_CONFIG_FLAG_KeepWeaponHolsteredUnlessFired=113,
CPED_CONFIG_FLAG_ForceScriptControlledKnockout=114,
CPED_CONFIG_FLAG_FallOutOfVehicleWhenKilled=115,
CPED_CONFIG_FLAG_GetOutBurningVehicle=116,
CPED_CONFIG_FLAG_BumpedByPlayer=117,
CPED_CONFIG_FLAG_RunFromFiresAndExplosions=118,
CPED_CONFIG_FLAG_TreatAsPlayerDuringTargeting=119,
CPED_CONFIG_FLAG_IsHandCuffed=120,
CPED_CONFIG_FLAG_IsAnkleCuffed=121,
CPED_CONFIG_FLAG_DisableMelee=122,
CPED_CONFIG_FLAG_DisableUnarmedDrivebys=123,
CPED_CONFIG_FLAG_JustGetsPulledOutWhenElectrocuted=124,
CPED_CONFIG_FLAG_UNUSED_REPLACE_ME=125,
CPED_CONFIG_FLAG_WillNotHotwireLawEnforcementVehicle=126,
CPED_CONFIG_FLAG_WillCommandeerRatherThanJack=127,
CPED_CONFIG_FLAG_CanBeAgitated=128,
CPED_CONFIG_FLAG_ForcePedToFaceLeftInCover=129,
CPED_CONFIG_FLAG_ForcePedToFaceRightInCover=130,
CPED_CONFIG_FLAG_BlockPedFromTurningInCover=131,
CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp=132,
CPED_CONFIG_FLAG_ForcePedToBeDragged=133,
CPED_CONFIG_FLAG_PreventPedFromReactingToBeingJacked=134,
CPED_CONFIG_FLAG_IsScuba=135,
CPED_CONFIG_FLAG_WillArrestRatherThanJack=136,
CPED_CONFIG_FLAG_RemoveDeadExtraFarAway=137,
CPED_CONFIG_FLAG_RidingTrain=138,
CPED_CONFIG_FLAG_ArrestResult=139,
CPED_CONFIG_FLAG_CanAttackFriendly=140,
CPED_CONFIG_FLAG_WillJackAnyPlayer=141,
CPED_CONFIG_FLAG_BumpedByPlayerVehicle=142,
CPED_CONFIG_FLAG_DodgedPlayerVehicle=143,
CPED_CONFIG_FLAG_WillJackWantedPlayersRatherThanStealCar=144,
CPED_CONFIG_FLAG_NoCopWantedAggro=145,
CPED_CONFIG_FLAG_DisableLadderClimbing=146,
CPED_CONFIG_FLAG_StairsDetected=147,
CPED_CONFIG_FLAG_SlopeDetected=148,
CPED_CONFIG_FLAG_HelmetHasBeenShot=149,
CPED_CONFIG_FLAG_CowerInsteadOfFlee=150,
CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown=151,
CPED_CONFIG_FLAG_AlwaysRespondToCriesForHelp=152,
CPED_CONFIG_FLAG_DisableBloodPoolCreation=153,
CPED_CONFIG_FLAG_ShouldFixIfNoCollision=154,
CPED_CONFIG_FLAG_CanPerformArrest=155,
CPED_CONFIG_FLAG_CanPerformUncuff=156,
CPED_CONFIG_FLAG_CanBeArrested=157,
CPED_CONFIG_FLAG_MoverConstrictedByOpposingCollisions=158,
CPED_CONFIG_FLAG_PlayerPreferFrontSeatMP=159,
CPED_CONFIG_FLAG_DontActivateRagdollFromImpactObject=160,
CPED_CONFIG_FLAG_DontActivateRagdollFromMelee=161,
CPED_CONFIG_FLAG_DontActivateRagdollFromWaterJet=162,
CPED_CONFIG_FLAG_DontActivateRagdollFromDrowning=163,
CPED_CONFIG_FLAG_DontActivateRagdollFromFalling=164,
CPED_CONFIG_FLAG_DontActivateRagdollFromRubberBullet=165,
CPED_CONFIG_FLAG_IsInjured=166,
CPED_CONFIG_FLAG_DontEnterVehiclesInPlayersGroup=167,
CPED_CONFIG_FLAG_SwimmingTasksRunning=168,
CPED_CONFIG_FLAG_PreventAllMeleeTaunts=169,
CPED_CONFIG_FLAG_ForceDirectEntry=170,
CPED_CONFIG_FLAG_AlwaysSeeApproachingVehicles=171,
CPED_CONFIG_FLAG_CanDiveAwayFromApproachingVehicles=172,
CPED_CONFIG_FLAG_AllowPlayerToInterruptVehicleEntryExit=173,
CPED_CONFIG_FLAG_OnlyAttackLawIfPlayerIsWanted=174,
CPED_CONFIG_FLAG_PlayerInContactWithKinematicPed=175,
CPED_CONFIG_FLAG_PlayerInContactWithSomethingOtherThanKinematicPed=176,
CPED_CONFIG_FLAG_PedsJackingMeDontGetIn=177,
CPED_CONFIG_FLAG_AdditionalRappellingPed=178,
CPED_CONFIG_FLAG_PedIgnoresAnimInterruptEvents=179,
CPED_CONFIG_FLAG_IsInCustody=180,
CPED_CONFIG_FLAG_ForceStandardBumpReactionThresholds=181,
CPED_CONFIG_FLAG_LawWillOnlyAttackIfPlayerIsWanted=182,
CPED_CONFIG_FLAG_IsAgitated=183,
CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat=184,
CPED_CONFIG_FLAG_UseKinematicModeWhenStationary=185,
CPED_CONFIG_FLAG_EnableWeaponBlocking=186,
CPED_CONFIG_FLAG_HasHurtStarted=187,
CPED_CONFIG_FLAG_DisableHurt=188,
CPED_CONFIG_FLAG_PlayerIsWeird=189,
CPED_CONFIG_FLAG_PedHadPhoneConversation=190,
CPED_CONFIG_FLAG_BeganCrossingRoad=191,
CPED_CONFIG_FLAG_WarpIntoLeadersVehicle=192,
CPED_CONFIG_FLAG_DoNothingWhenOnFootByDefault=193,
CPED_CONFIG_FLAG_UsingScenario=194,
CPED_CONFIG_FLAG_VisibleOnScreen=195,
CPED_CONFIG_FLAG_DontCollideWithKinematic=196,
CPED_CONFIG_FLAG_ActivateOnSwitchFromLowPhysicsLod=197,
CPED_CONFIG_FLAG_DontActivateRagdollOnPedCollisionWhenDead=198,
CPED_CONFIG_FLAG_DontActivateRagdollOnVehicleCollisionWhenDead=199,
CPED_CONFIG_FLAG_HasBeenInArmedCombat=200,
CPED_CONFIG_FLAG_UseDiminishingAmmoRate=201,
CPED_CONFIG_FLAG_Avoidance_Ignore_All=202,
CPED_CONFIG_FLAG_Avoidance_Ignored_by_All=203,
CPED_CONFIG_FLAG_Avoidance_Ignore_Group1=204,
CPED_CONFIG_FLAG_Avoidance_Member_of_Group1=205,
CPED_CONFIG_FLAG_ForcedToUseSpecificGroupSeatIndex=206,
CPED_CONFIG_FLAG_LowPhysicsLodMayPlaceOnNavMesh=207,
CPED_CONFIG_FLAG_DisableExplosionReactions=208,
CPED_CONFIG_FLAG_DodgedPlayer=209,
CPED_CONFIG_FLAG_WaitingForPlayerControlInterrupt=210,
CPED_CONFIG_FLAG_ForcedToStayInCover=211,
CPED_CONFIG_FLAG_GeneratesSoundEvents=212,
CPED_CONFIG_FLAG_ListensToSoundEvents=213,
CPED_CONFIG_FLAG_AllowToBeTargetedInAVehicle=214,
CPED_CONFIG_FLAG_WaitForDirectEntryPointToBeFreeWhenExiting=215,
CPED_CONFIG_FLAG_OnlyRequireOnePressToExitVehicle=216,
CPED_CONFIG_FLAG_ForceExitToSkyDive=217,
CPED_CONFIG_FLAG_SteersAroundVehicles=218,
CPED_CONFIG_FLAG_AllowPedInVehiclesOverrideTaskFlags=219,
CPED_CONFIG_FLAG_DontEnterLeadersVehicle=220,
CPED_CONFIG_FLAG_DisableExitToSkyDive=221,
CPED_CONFIG_FLAG_ScriptHasDisabledCollision=222,
CPED_CONFIG_FLAG_UseAmbientModelScaling=223,
CPED_CONFIG_FLAG_DontWatchFirstOnNextHurryAway=224,
CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse=225,
CPED_CONFIG_FLAG_DisablePedAvoidance=226,
CPED_CONFIG_FLAG_ForceRagdollUponDeath=227,
CPED_CONFIG_FLAG_CanLosePropsOnDamage=228,
CPED_CONFIG_FLAG_DisablePanicInVehicle=229,
CPED_CONFIG_FLAG_AllowedToDetachTrailer=230,
CPED_CONFIG_FLAG_HasShotBeenReactedToFromFront=231,
CPED_CONFIG_FLAG_HasShotBeenReactedToFromBack=232,
CPED_CONFIG_FLAG_HasShotBeenReactedToFromLeft=233,
CPED_CONFIG_FLAG_HasShotBeenReactedToFromRight=234,
CPED_CONFIG_FLAG_AllowBlockDeadPedRagdollActivation=235,
CPED_CONFIG_FLAG_IsHoldingProp=236,
CPED_CONFIG_FLAG_BlocksPathingWhenDead=237,
CPED_CONFIG_FLAG_ForcePlayNormalScenarioExitOnNextScriptCommand=238,
CPED_CONFIG_FLAG_ForcePlayImmediateScenarioExitOnNextScriptCommand=239,
CPED_CONFIG_FLAG_ForceSkinCharacterCloth=240,
CPED_CONFIG_FLAG_LeaveEngineOnWhenExitingVehicles=241,
CPED_CONFIG_FLAG_PhoneDisableTextingAnimations=242,
CPED_CONFIG_FLAG_PhoneDisableTalkingAnimations=243,
CPED_CONFIG_FLAG_PhoneDisableCameraAnimations=244,
CPED_CONFIG_FLAG_DisableBlindFiringInShotReactions=245,
CPED_CONFIG_FLAG_AllowNearbyCoverUsage=246,
CPED_CONFIG_FLAG_InStrafeTransition=247,
CPED_CONFIG_FLAG_CanPlayInCarIdles=248,
CPED_CONFIG_FLAG_CanAttackNonWantedPlayerAsLaw=249,
CPED_CONFIG_FLAG_WillTakeDamageWhenVehicleCrashes=250,
CPED_CONFIG_FLAG_AICanDrivePlayerAsRearPassenger=251,
CPED_CONFIG_FLAG_PlayerCanJackFriendlyPlayers=252,
CPED_CONFIG_FLAG_OnStairs=253,
CPED_CONFIG_FLAG_SimulatingAiming=254,
CPED_CONFIG_FLAG_AIDriverAllowFriendlyPassengerSeatEntry=255,
CPED_CONFIG_FLAG_ParentCarIsBeingRemoved=256,
CPED_CONFIG_FLAG_AllowMissionPedToUseInjuredMovement=257,
CPED_CONFIG_FLAG_CanLoseHelmetOnDamage=258,
CPED_CONFIG_FLAG_NeverDoScenarioExitProbeChecks=259,
CPED_CONFIG_FLAG_SuppressLowLODRagdollSwitchWhenCorpseSettles=260,
CPED_CONFIG_FLAG_PreventUsingLowerPrioritySeats=261,
CPED_CONFIG_FLAG_JustLeftVehicleNeedsReset=262,
CPED_CONFIG_FLAG_TeleportIfCantReachPlayer=263,
CPED_CONFIG_FLAG_PedsInVehiclePositionNeedsReset=264,
CPED_CONFIG_FLAG_PedsFullyInSeat=265,
CPED_CONFIG_FLAG_AllowPlayerLockOnIfFriendly=266,
CPED_CONFIG_FLAG_UseCameraHeadingForDesiredDirectionLockOnTest=267,
CPED_CONFIG_FLAG_TeleportToLeaderVehicle=268,
CPED_CONFIG_FLAG_Avoidance_Ignore_WeirdPedBuffer=269,
CPED_CONFIG_FLAG_OnStairSlope=270,
CPED_CONFIG_FLAG_HasPlayedNMGetup=271,
CPED_CONFIG_FLAG_DontBlipCop=272,
CPED_CONFIG_FLAG_SpawnedAtExtendedRangeScenario=273,
CPED_CONFIG_FLAG_WalkAlongsideLeaderWhenClose=274,
CPED_CONFIG_FLAG_KillWhenTrapped=275,
CPED_CONFIG_FLAG_EdgeDetected=276,
CPED_CONFIG_FLAG_AlwaysWakeUpPhysicsOfIntersectedPeds=277,
CPED_CONFIG_FLAG_EquippedAmbientLoadOutWeapon=278,
CPED_CONFIG_FLAG_AvoidTearGas=279,
CPED_CONFIG_FLAG_StoppedSpeechUponFreezing=280,
CPED_CONFIG_FLAG_DisableGoToWritheWhenInjured=281,
CPED_CONFIG_FLAG_OnlyUseForcedSeatWhenEnteringHeliInGroup=282,
CPED_CONFIG_FLAG_ThrownFromVehicleDueToExhaustion=283,
CPED_CONFIG_FLAG_UpdateEnclosedSearchRegion=284,
CPED_CONFIG_FLAG_DisableWeirdPedEvents=285,
CPED_CONFIG_FLAG_ShouldChargeNow=286,
CPED_CONFIG_FLAG_RagdollingOnBoat=287,
CPED_CONFIG_FLAG_HasBrandishedWeapon=288,
CPED_CONFIG_FLAG_AllowMinorReactionsAsMissionPed=289,
CPED_CONFIG_FLAG_BlockDeadBodyShockingEventsWhenDead=290,
CPED_CONFIG_FLAG_PedHasBeenSeen=291,
CPED_CONFIG_FLAG_PedIsInReusePool=292,
CPED_CONFIG_FLAG_PedWasReused=293,
CPED_CONFIG_FLAG_DisableShockingEvents=294,
CPED_CONFIG_FLAG_MovedUsingLowLodPhysicsSinceLastActive=295,
CPED_CONFIG_FLAG_NeverReactToPedOnRoof=296,
CPED_CONFIG_FLAG_ForcePlayFleeScenarioExitOnNextScriptCommand=297,
CPED_CONFIG_FLAG_JustBumpedIntoVehicle=298,
CPED_CONFIG_FLAG_DisableShockingDrivingOnPavementEvents=299,
CPED_CONFIG_FLAG_ShouldThrowSmokeNow=300,
CPED_CONFIG_FLAG_DisablePedConstraints=301,
CPED_CONFIG_FLAG_ForceInitialPeekInCover=302,
CPED_CONFIG_FLAG_CreatedByDispatch=303,
CPED_CONFIG_FLAG_PointGunLeftHandSupporting=304,
CPED_CONFIG_FLAG_DisableJumpingFromVehiclesAfterLeader=305,
CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerPedImpact=306,
CPED_CONFIG_FLAG_DontActivateRagdollFromAiRagdollImpact=307,
CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerRagdollImpact=308,
CPED_CONFIG_FLAG_DisableQuadrupedSpring=309,
CPED_CONFIG_FLAG_IsInCluster=310,
CPED_CONFIG_FLAG_ShoutToGroupOnPlayerMelee=311,
CPED_CONFIG_FLAG_IgnoredByAutoOpenDoors=312,
CPED_CONFIG_FLAG_PreferInjuredGetup=313,
CPED_CONFIG_FLAG_ForceIgnoreMeleeActiveCombatant=314,
CPED_CONFIG_FLAG_CheckLoSForSoundEvents=315,
CPED_CONFIG_FLAG_JackedAbandonedCar=316,
CPED_CONFIG_FLAG_CanSayFollowedByPlayerAudio=317,
CPED_CONFIG_FLAG_ActivateRagdollFromMinorPlayerContact=318,
CPED_CONFIG_FLAG_HasPortablePickupAttached=319,
CPED_CONFIG_FLAG_ForcePoseCharacterCloth=320,
CPED_CONFIG_FLAG_HasClothCollisionBounds=321,
CPED_CONFIG_FLAG_HasHighHeels=322,
CPED_CONFIG_FLAG_TreatAsAmbientPedForDriverLockOn=323,
CPED_CONFIG_FLAG_DontBehaveLikeLaw=324,
CPED_CONFIG_FLAG_SpawnedAtScenario=325,
CPED_CONFIG_FLAG_DisablePoliceInvestigatingBody=326,
CPED_CONFIG_FLAG_DisableWritheShootFromGround=327,
CPED_CONFIG_FLAG_LowerPriorityOfWarpSeats=328,
CPED_CONFIG_FLAG_DisableTalkTo=329,
CPED_CONFIG_FLAG_DontBlip=330,
CPED_CONFIG_FLAG_IsSwitchingWeapon=331,
CPED_CONFIG_FLAG_IgnoreLegIkRestrictions=332,
CPED_CONFIG_FLAG_ScriptForceNoTimesliceIntelligenceUpdate=333,
CPED_CONFIG_FLAG_JackedOutOfMyVehicle=334,
CPED_CONFIG_FLAG_WentIntoCombatAfterBeingJacked=335,
CPED_CONFIG_FLAG_DontActivateRagdollForVehicleGrab=336,
CPED_CONFIG_FLAG_ForcePackageCharacterCloth=337,
CPED_CONFIG_FLAG_DontRemoveWithValidOrder=338,
CPED_CONFIG_FLAG_AllowTaskDoNothingTimeslicing=339,
CPED_CONFIG_FLAG_ForcedToStayInCoverDueToPlayerSwitch=340,
CPED_CONFIG_FLAG_ForceProneCharacterCloth=341,
CPED_CONFIG_FLAG_NotAllowedToJackAnyPlayers=342,
CPED_CONFIG_FLAG_InToStrafeTransition=343,
CPED_CONFIG_FLAG_KilledByStandardMelee=344,
CPED_CONFIG_FLAG_AlwaysLeaveTrainUponArrival=345,
CPED_CONFIG_FLAG_ForcePlayDirectedNormalScenarioExitOnNextScriptCommand=346,
CPED_CONFIG_FLAG_OnlyWritheFromWeaponDamage=347,
CPED_CONFIG_FLAG_UseSloMoBloodVfx=348,
CPED_CONFIG_FLAG_EquipJetpack=349,
CPED_CONFIG_FLAG_PreventDraggedOutOfCarThreatResponse=350,
CPED_CONFIG_FLAG_ScriptHasCompletelyDisabledCollision=351,
CPED_CONFIG_FLAG_NeverDoScenarioNavChecks=352,
CPED_CONFIG_FLAG_ForceSynchronousScenarioExitChecking=353,
CPED_CONFIG_FLAG_ThrowingGrenadeWhileAiming=354,
CPED_CONFIG_FLAG_HeadbobToRadioEnabled=355,
CPED_CONFIG_FLAG_ForceDeepSurfaceCheck=356,
CPED_CONFIG_FLAG_DisableDeepSurfaceAnims=357,
CPED_CONFIG_FLAG_DontBlipNotSynced=358,
CPED_CONFIG_FLAG_IsDuckingInVehicle=359,
CPED_CONFIG_FLAG_PreventAutoShuffleToTurretSeat=360,
CPED_CONFIG_FLAG_DisableEventInteriorStatusCheck=361,
CPED_CONFIG_FLAG_HasReserveParachute=362,
CPED_CONFIG_FLAG_UseReserveParachute=363,
CPED_CONFIG_FLAG_TreatDislikeAsHateWhenInCombat=364,
CPED_CONFIG_FLAG_OnlyUpdateTargetWantedIfSeen=365,
CPED_CONFIG_FLAG_AllowAutoShuffleToDriversSeat=366,
CPED_CONFIG_FLAG_DontActivateRagdollFromSmokeGrenade=367,
CPED_CONFIG_FLAG_LinkMBRToOwnerOnChain=368,
CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayer=369,
CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayerVehicle=370,
CPED_CONFIG_FLAG_InFPSUnholsterTransition=371,
CPED_CONFIG_FLAG_PreventReactingToSilencedCloneBullets=372,
CPED_CONFIG_FLAG_DisableInjuredCryForHelpEvents=373,
CPED_CONFIG_FLAG_NeverLeaveTrain=374,
CPED_CONFIG_FLAG_DontDropJetpackOnDeath=375,
CPED_CONFIG_FLAG_UseFPSUnholsterTransitionDuringCombatRoll=376,
CPED_CONFIG_FLAG_ExitingFPSCombatRoll=377,
CPED_CONFIG_FLAG_ScriptHasControlOfPlayer=378,
CPED_CONFIG_FLAG_PlayFPSIdleFidgetsForProjectile=379,
CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes=380,
CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInAircraft=381,
CPED_CONFIG_FLAG_WasPlayingFPSGetup=382,
CPED_CONFIG_FLAG_WasPlayingFPSMeleeActionResult=383,
CPED_CONFIG_FLAG_PreferNoPriorityRemoval=384,
CPED_CONFIG_FLAG_FPSFidgetsAbortedOnFire=385,
CPED_CONFIG_FLAG_ForceFPSIKWithUpperBodyAnim=386,
CPED_CONFIG_FLAG_SwitchingCharactersInFirstPerson=387,
CPED_CONFIG_FLAG_IsClimbingLadder=388,
CPED_CONFIG_FLAG_HasBareFeet=389,
CPED_CONFIG_FLAG_UNUSED_REPLACE_ME_2=390,
CPED_CONFIG_FLAG_GoOnWithoutVehicleIfItIsUnableToGetBackToRoad=391,
CPED_CONFIG_FLAG_BlockDroppingHealthSnacksOnDeath=392,
CPED_CONFIG_FLAG_ResetLastVehicleOnVehicleExit=393,
CPED_CONFIG_FLAG_ForceThreatResponseToNonFriendToFriendMeleeActions=394,
CPED_CONFIG_FLAG_DontRespondToRandomPedsDamage=395,
CPED_CONFIG_FLAG_AllowContinuousThreatResponseWantedLevelUpdates=396,
CPED_CONFIG_FLAG_KeepTargetLossResponseOnCleanup=397,
CPED_CONFIG_FLAG_PlayersDontDragMeOutOfCar=398,
CPED_CONFIG_FLAG_BroadcastRepondedToThreatWhenGoingToPointShooting=399,
CPED_CONFIG_FLAG_IgnorePedTypeForIsFriendlyWith=400,
CPED_CONFIG_FLAG_TreatNonFriendlyAsHateWhenInCombat=401,
CPED_CONFIG_FLAG_DontLeaveVehicleIfLeaderNotInVehicle=402,
CPED_CONFIG_FLAG_ChangeFromPermanentToAmbientPopTypeOnMigration=403,
CPED_CONFIG_FLAG_AllowMeleeReactionIfMeleeProofIsOn=404,
CPED_CONFIG_FLAG_UsingLowriderLeans=405,
CPED_CONFIG_FLAG_UsingAlternateLowriderLeans=406,
CPED_CONFIG_FLAG_UseNormalExplosionDamageWhenBlownUpInVehicle=407,
CPED_CONFIG_FLAG_DisableHomingMissileLockForVehiclePedInside=408,
CPED_CONFIG_FLAG_DisableTakeOffScubaGear=409,
CPED_CONFIG_FLAG_IgnoreMeleeFistWeaponDamageMult=410,
CPED_CONFIG_FLAG_LawPedsCanFleeFromNonWantedPlayer=411,
CPED_CONFIG_FLAG_ForceBlipSecurityPedsIfPlayerIsWanted=412,
CPED_CONFIG_FLAG_IsHolsteringWeapon=413,
CPED_CONFIG_FLAG_UseGoToPointForScenarioNavigation=414,
CPED_CONFIG_FLAG_DontClearLocalPassengersWantedLevel=415,
CPED_CONFIG_FLAG_BlockAutoSwapOnWeaponPickups=416,
CPED_CONFIG_FLAG_ThisPedIsATargetPriorityForAI=417,
CPED_CONFIG_FLAG_IsSwitchingHelmetVisor=418,
CPED_CONFIG_FLAG_ForceHelmetVisorSwitch=419,
CPED_CONFIG_FLAG_IsPerformingVehicleMelee=420,
CPED_CONFIG_FLAG_UseOverrideFootstepPtFx=421,
CPED_CONFIG_FLAG_DisableVehicleCombat=422,
CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamage=423,
CPED_CONFIG_FLAG_AllowBikeAlternateAnimations=424,
CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamageNonSynced=425,
CPED_CONFIG_FLAG_UseLockpickVehicleEntryAnimations=426,
CPED_CONFIG_FLAG_IgnoreInteriorCheckForSprinting=427,
CPED_CONFIG_FLAG_SwatHeliSpawnWithinLastSpottedLocation=428,
CPED_CONFIG_FLAG_DisableStartEngine=429,
CPED_CONFIG_FLAG_IgnoreBeingOnFire=430,
CPED_CONFIG_FLAG_DisableTurretOrRearSeatPreference=431,
CPED_CONFIG_FLAG_DisableWantedHelicopterSpawning=432,
CPED_CONFIG_FLAG_UseTargetPerceptionForCreatingAimedAtEvents=433,
CPED_CONFIG_FLAG_DisableHomingMissileLockon=434,
CPED_CONFIG_FLAG_ForceIgnoreMaxMeleeActiveSupportCombatants=435,
CPED_CONFIG_FLAG_StayInDefensiveAreaWhenInVehicle=436,
CPED_CONFIG_FLAG_DontShoutTargetPosition=437,
CPED_CONFIG_FLAG_DisableHelmetArmor=438,
CPED_CONFIG_FLAG_CreatedByConcealedPlayer=439,
CPED_CONFIG_FLAG_PermanentlyDisablePotentialToBeWalkedIntoResponse=440,
CPED_CONFIG_FLAG_PreventVehExitDueToInvalidWeapon=441,
CPED_CONFIG_FLAG_IgnoreNetSessionFriendlyFireCheckForAllowDamage=442,
CPED_CONFIG_FLAG_DontLeaveCombatIfTargetPlayerIsAttackedByPolice=443,
CPED_CONFIG_FLAG_CheckLockedBeforeWarp=444,
CPED_CONFIG_FLAG_DontShuffleInVehicleToMakeRoom=445,
CPED_CONFIG_FLAG_GiveWeaponOnGetup=446,
CPED_CONFIG_FLAG_DontHitVehicleWithProjectiles=447,
CPED_CONFIG_FLAG_DisableForcedEntryForOpenVehiclesFromTryLockedDoor=448,
CPED_CONFIG_FLAG_FiresDummyRockets=449,
CPED_CONFIG_FLAG_PedIsArresting=450,
CPED_CONFIG_FLAG_IsDecoyPed=451,
CPED_CONFIG_FLAG_HasEstablishedDecoy=452,
CPED_CONFIG_FLAG_BlockDispatchedHelicoptersFromLanding=453,
CPED_CONFIG_FLAG_DontCryForHelpOnStun=454,
CPED_CONFIG_FLAG_HitByTranqWeapon=455,
CPED_CONFIG_FLAG_CanBeIncapacitated=456,
CPED_CONFIG_FLAG_ForcedAimFromArrest=457,
CPED_CONFIG_FLAG_DontChangeTargetFromMelee=458,
_0x4376ABF2=459,
CPED_CONFIG_FLAG_RagdollFloatsIndefinitely=460,
CPED_CONFIG_FLAG_BlockElectricWeaponDamage=461,
_0x262A3B8E=462,
_0x1AA79A25=463,
},{
__index=function(c,d)a("fx.Enum.PedConfigFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedConfigFlags is read-only",2)end,
})]],
["shared/enums/PedDecorationZone.lua"]=[[
local a,b=error,tostring
return setmetatable({
ZONE_TORSO=0,
ZONE_HEAD=1,
ZONE_LEFT_ARM=2,
ZONE_RIGHT_ARM=3,
ZONE_LEFT_LEG=4,
ZONE_RIGHT_LEG=5,
ZONE_UNKNOWN=6,
ZONE_NONE=7,
},{
__index=function(c,d)a("fx.Enum.PedDecorationZone has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedDecorationZone is read-only",2)end,
})]],
["shared/enums/PedFaceFeatures.lua"]=[[
local a,b=error,tostring
return setmetatable({
NoseWidth="noseWidth",
NosePeakHeight="nosePeakHeight",
NosePeakLength="nosePeakLength",
NoseBoneHeight="noseBoneHeight",
NosePeakLowering="nosePeakLowering",
NoseBoneTwist="noseBoneTwist",
EyebrowHeight="eyebrowHeight",
EyebrowDepth="eyebrowDepth",
CheekBoneHeight="cheekBoneHeight",
CheekBoneWidth="cheekBoneWidth",
CheekWidth="cheekWidth",
EyeOpening="eyeOpening",
LipThickness="lipThickness",
JawBoneWidth="jawBoneWidth",
JawBoneLength="jawBoneLength",
ChinBoneHeight="chinBoneHeight",
ChinBoneLength="chinBoneLength",
ChinBoneWidth="chinBoneWidth",
ChinDimple="chinDimple",
NeckThickness="neckThickness",
},{
__index=function(c,d)a("fx.Enum.PedFaceFeatures has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedFaceFeatures is read-only",2)end,
})]],
["shared/enums/PedMotionState.lua"]=[[
local a,b=error,tostring
return setmetatable({
MOTIONSTATE_NONE=-294553821,
MOTIONSTATE_IDLE=-1871534317,
MOTIONSTATE_WALK=-668482597,
MOTIONSTATE_RUN=-530524,
MOTIONSTATE_SPRINT=-1115154469,
MOTIONSTATE_CROUCH_IDLE=1140525470,
MOTIONSTATE_CROUCH_WALK=147004056,
MOTIONSTATE_CROUCH_RUN=898879241,
MOTIONSTATE_DONOTHING=247561816,
MOTIONSTATE_ANIMATEDVELOCITY=1427811395,
MOTIONSTATE_INVEHICLE=-1797663347,
MOTIONSTATE_AIMING=1063765679,
MOTIONSTATE_DIVING_IDLE=1212730861,
MOTIONSTATE_DIVING_SWIM=-1855028596,
MOTIONSTATE_SWIMMING_TREADWATER=-776007225,
MOTIONSTATE_DEAD=230360860,
MOTIONSTATE_STEALTH_IDLE=1110276645,
MOTIONSTATE_STEALTH_WALK=69908130,
MOTIONSTATE_STEALTH_RUN=-83133983,
MOTIONSTATE_PARACHUTING=-1161760501,
MOTIONSTATE_ACTIONMODE_IDLE=-633298724,
MOTIONSTATE_ACTIONMODE_WALK=-762290521,
MOTIONSTATE_ACTIONMODE_RUN=834330132,
MOTIONSTATE_JETPACK=1398696542,
},{
__index=function(c,d)a("fx.Enum.PedMotionState has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedMotionState is read-only",2)end,
})]],
["shared/enums/PedOverlays.lua"]=[[
local a,b=error,tostring
return setmetatable({
Blemishes="blemishes",
Beard="beard",
Eyebrows="eyebrows",
Ageing="ageing",
Makeup="makeup",
Blush="blush",
Complexion="complexion",
SunDamage="sunDamage",
Lipstick="lipstick",
Freckles="freckles",
ChestHair="chestHair",
BodyBlemishes="bodyBlemishes",
MoreBodyBlemishes="moreBodyBlemishes",
},{
__index=function(c,d)a("fx.Enum.PedOverlays has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedOverlays is read-only",2)end,
})]],
["shared/enums/PedProps.lua"]=[[
local a,b=error,tostring
return setmetatable({
Hat="hat",
Glasses="glasses",
Ears="ears",
Watch="watch",
Bracelet="bracelet",
},{
__index=function(c,d)a("fx.Enum.PedProps has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedProps is read-only",2)end,
})]],
["shared/enums/PedType.lua"]=[[
local a,b=error,tostring
return setmetatable({
PED_TYPE_PLAYER_0=0,
PED_TYPE_PLAYER_1=1,
PED_TYPE_NETWORK_PLAYER=2,
PED_TYPE_PLAYER_2=3,
PED_TYPE_CIVMALE=4,
PED_TYPE_CIVFEMALE=5,
PED_TYPE_COP=6,
PED_TYPE_GANG_ALBANIAN=7,
PED_TYPE_GANG_BIKER_1=8,
PED_TYPE_GANG_BIKER_2=9,
PED_TYPE_GANG_ITALIAN=10,
PED_TYPE_GANG_RUSSIAN=11,
PED_TYPE_GANG_RUSSIAN_2=12,
PED_TYPE_GANG_IRISH=13,
PED_TYPE_GANG_JAMAICAN=14,
PED_TYPE_GANG_AFRICAN_AMERICAN=15,
PED_TYPE_GANG_KOREAN=16,
PED_TYPE_GANG_CHINESE_JAPANESE=17,
PED_TYPE_GANG_PUERTO_RICAN=18,
PED_TYPE_DEALER=19,
PED_TYPE_MEDIC=20,
PED_TYPE_FIREMAN=21,
PED_TYPE_CRIMINAL=22,
PED_TYPE_BUM=23,
PED_TYPE_PROSTITUTE=24,
PED_TYPE_SPECIAL=25,
PED_TYPE_MISSION=26,
PED_TYPE_SWAT=27,
PED_TYPE_ANIMAL=28,
PED_TYPE_ARMY=29,
},{
__index=function(c,d)a("fx.Enum.PedType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedType is read-only",2)end,
})]],
["shared/enums/PedVarComp.lua"]=[[
local a,b=error,tostring
return setmetatable({
PV_COMP_INVALID=-1,
PV_COMP_HEAD=0,
PV_COMP_BERD=1,
PV_COMP_HAIR=2,
PV_COMP_UPPR=3,
PV_COMP_LOWR=4,
PV_COMP_HAND=5,
PV_COMP_FEET=6,
PV_COMP_TEEF=7,
PV_COMP_ACCS=8,
PV_COMP_TASK=9,
PV_COMP_DECL=10,
PV_COMP_JBIB=11,
PV_COMP_MAX=12,
},{
__index=function(c,d)a("fx.Enum.PedVarComp has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PedVarComp is read-only",2)end,
})]],
["shared/enums/PeerStatistics.lua"]=[[
local a,b=error,tostring
return setmetatable({
PacketLoss=0,
PacketLossVariance=1,
PacketLossEpoch=2,
RoundTripTime=3,
RoundTripTimeVariance=4,
LastRoundTripTime=5,
LastRoundTripTimeVariance=6,
PacketThrottleEpoch=7,
},{
__index=function(c,d)a("fx.Enum.PeerStatistics has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PeerStatistics is read-only",2)end,
})]],
["shared/enums/PhysicsRopeType.lua"]=[[
local a,b=error,tostring
return setmetatable({
RopeThin=0,
RopeWire6=1,
RopeWire32=2,
RopeMesh=3,
RopeThinWire32=4,
RopeReins=5,
RopeThin4=6,
RopeWire64=7,
},{
__index=function(c,d)a("fx.Enum.PhysicsRopeType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PhysicsRopeType is read-only",2)end,
})]],
["shared/enums/PlaneDamageSection.lua"]=[[
local a,b=error,tostring
return setmetatable({
WING_L=0,
WING_R=1,
TAIL=2,
ENGINE_L=3,
ENGINE_R=4,
ELEVATOR_L=5,
ELEVATOR_R=6,
AILERON_L=7,
AILERON_R=8,
RUDDER=9,
RUDDER_2=10,
AIRBRAKE_L=11,
AIRBRAKE_R=12,
},{
__index=function(c,d)a("fx.Enum.PlaneDamageSection has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PlaneDamageSection is read-only",2)end,
})]],
["shared/enums/PlayerSpawnLocation.lua"]=[[
local a,b=error,tostring
return setmetatable({
SPAWN_LOCATION_AUTOMATIC=0,
SPAWN_LOCATION_NEAR_DEATH=1,
SPAWN_LOCATION_NEAR_TEAM_MATES=2,
SPAWN_LOCATION_MISSION_AREA=3,
SPAWN_LOCATION_NEAR_OTHER_PLAYERS=4,
SPAWN_LOCATION_NEAR_CURRENT_POSITION=5,
SPAWN_LOCATION_AT_CURRENT_POSITION=6,
SPAWN_LOCATION_NET_TEST_BED=7,
SPAWN_LOCATION_CUSTOM_SPAWN_POINTS=8,
SPAWN_LOCATION_OUTSIDE_SIMEON_GARAGE=9,
SPAWN_LOCATION_NEAR_SPECIFIC_COORDS=10,
SPAWN_LOCATION_AT_SPECIFIC_COORDS=11,
SPAWN_LOCATION_AT_AIRPORT_ARRIVALS=12,
SPAWN_LOCATION_AT_SPECIFIC_COORDS_IF_POSSIBLE=13,
SPAWN_LOCATION_IN_SPECIFIC_ANGLED_AREA=14,
SPAWN_LOCATION_NEAREST_RESPAWN_POINT=15,
SPAWN_LOCATION_AT_SPECIFIC_COORDS_RACE_CORONA=16,
SPAWN_LOCATION_INSIDE_GARAGE=17,
SPAWN_LOCATION_INSIDE_PROPERTY=18,
SPAWN_LOCATION_INSIDE_PROPERTY_OR_GARAGE=19,
SPAWN_LOCATION_NEAR_DEATH_IMPROMPTU=20,
SPAWN_LOCATION_NEAR_CURRENT_POSITION_SPREAD_OUT=21,
SPAWN_LOCATION_NEAREST_RESPAWN_POINT_TO_SPECIFIC_COORDS=22,
SPAWN_LOCATION_NEAREST_HOSPITAL=23,
SPAWN_LOCATION_NEAREST_POLICE_STATION=24,
SPAWN_LOCATION_NEAREST_HOTEL_TO_SPECIFIC_COORDS=25,
SPAWN_LOCATION_MISSION_AREA_NEAR_CURRENT_POSITION=26,
SPAWN_LOCATION_PRIVATE_YACHT=27,
SPAWN_LOCATION_PRIVATE_YACHT_APARTMENT=28,
SPAWN_LOCATION_PRIVATE_FRIEND_YACHT=29,
SPAWN_LOCATION_PRIVATE_YACHT_NEAR_SHORE=30,
SPAWN_LOCATION_NEAR_GANG_BOSS=31,
SPAWN_LOCATION_NEAR_SPECIFIC_COORDS_WITH_GANG=32,
SPAWN_LOCATION_GANG_DM=33,
SPAWN_LOCATION_GANG_BOSS_PRIVATE_YACHT=34,
SPAWN_LOCATION_OFFICE=35,
SPAWN_LOCATION_CLUBHOUSE=36,
SPAWN_LOCATION_NEAR_CURRENT_POSITION_AS_POSSIBLE=37,
SPAWN_LOCATION_NEAR_CURRENT_PERCEIVED_POSITION=38,
SPAWN_LOCATION_IE_WAREHOUSE=39,
SPAWN_LOCATION_BUNKER=40,
SPAWN_LOCATION_HANGAR=41,
SPAWN_LOCATION_DEFUNCT_BASE=42,
SPAWN_LOCATION_NIGHTCLUB=43,
SPAWN_LOCATION_ARENA_GARAGE=44,
SPAWN_LOCATION_CASINO=45,
SPAWN_LOCATION_CASINO_APARTMENT=46,
SPAWN_LOCATION_CASINO_OUTSIDE=47,
SPAWN_LOCATION_ARCADE=48,
SPAWN_LOCATION_CASINO_NIGHTCLUB=49,
SPAWN_LOCATION_SUBMARINE=50,
SPAWN_LOCATION_HEIST_ISLAND_NEAR_DEATH=51,
SPAWN_LOCATION_HEIST_ISLAND_BEACH_PARTY=52,
SPAWN_LOCATION_LAND_NEAR_SUBMARINE=53,
SPAWN_LOCATION_CAR_MEET=54,
SPAWN_LOCATION_AUTO_SHOP=55,
SPAWN_LOCATION_FIXER_HQ=56,
SPAWN_LOCATION_SITTING_SMOKING=57,
SPAWN_LOCATION_DRUNK_WAKE_UP_MUSIC_STUDIO=58,
SPAWN_LOCATION_MUSIC_STUDIO=59,
TOTAL_SPAWN_LOCATIONS=60,
},{
__index=function(c,d)a("fx.Enum.PlayerSpawnLocation has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PlayerSpawnLocation is read-only",2)end,
})]],
["shared/enums/PlayerSwitchType.lua"]=[[
local a,b=error,tostring
return setmetatable({
SWITCH_TYPE_AUTO=0,
SWITCH_TYPE_LONG=1,
SWITCH_TYPE_MEDIUM=2,
SWITCH_TYPE_SHORT=3,
},{
__index=function(c,d)a("fx.Enum.PlayerSwitchType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.PlayerSwitchType is read-only",2)end,
})]],
["shared/enums/Reactions.lua"]=[[
local a,b=error,tostring
return setmetatable({
Left=0,
Right=1,
Stop=2,
},{
__index=function(c,d)a("fx.Enum.Reactions has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.Reactions is read-only",2)end,
})]],
["shared/enums/RenderingOptionFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
RO_NO_OPTIONS=0,
RO_STOP_RENDERING_OPTION_WHEN_PLAYER_EXITS_INTO_COVER=1,
},{
__index=function(c,d)a("fx.Enum.RenderingOptionFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.RenderingOptionFlags is read-only",2)end,
})]],
["shared/enums/RoofState.lua"]=[[
local a,b=error,tostring
return setmetatable({
RAISED=0,
LOWERING=1,
LOWERED=2,
RAISING=3,
CLOSING_BOOT=4,
ROOF_STUCK_RAISED=5,
ROOF_STUCK_LOWERED=6,
},{
__index=function(c,d)a("fx.Enum.RoofState has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.RoofState is read-only",2)end,
})]],
["shared/enums/RopeFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
DrawShadowEnabled=2,
Breakable=4,
RopeUnwindingFront=8,
RopeWinding=32,
},{
__index=function(c,d)a("fx.Enum.RopeFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.RopeFlags is read-only",2)end,
})]],
["shared/enums/RotationOrder.lua"]=[[
local a,b=error,tostring
return setmetatable({
ROT_ZYX=0,
ROT_YZX=1,
ROT_ZXY=2,
ROT_XZY=3,
ROT_YXZ=4,
ROT_XYZ=5,
},{
__index=function(c,d)a("fx.Enum.RotationOrder has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.RotationOrder is read-only",2)end,
})]],
["shared/enums/ScriptedAnimFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
AF_LOOPING=1,
AF_HOLD_LAST_FRAME=2,
AF_REPOSITION_WHEN_FINISHED=4,
AF_NOT_INTERRUPTABLE=8,
AF_UPPERBODY=16,
AF_SECONDARY=32,
AF_REORIENT_WHEN_FINISHED=64,
AF_ABORT_ON_PED_MOVEMENT=128,
AF_ADDITIVE=256,
AF_TURN_OFF_COLLISION=512,
AF_OVERRIDE_PHYSICS=1024,
AF_IGNORE_GRAVITY=2048,
AF_EXTRACT_INITIAL_OFFSET=4096,
AF_EXIT_AFTER_INTERRUPTED=8192,
AF_TAG_SYNC_IN=16384,
AF_TAG_SYNC_OUT=32768,
AF_TAG_SYNC_CONTINUOUS=65536,
AF_FORCE_START=131072,
AF_USE_KINEMATIC_PHYSICS=262144,
AF_USE_MOVER_EXTRACTION=524288,
AF_HIDE_WEAPON=1048576,
AF_ENDS_IN_DEAD_POSE=2097152,
AF_ACTIVATE_RAGDOLL_ON_COLLISION=4194304,
AF_DONT_EXIT_ON_DEATH=8388608,
AF_ABORT_ON_WEAPON_DAMAGE=16777216,
AF_DISABLE_FORCED_PHYSICS_UPDATE=33554432,
AF_PROCESS_ATTACHMENTS_ON_START=67108864,
AF_EXPAND_PED_CAPSULE_FROM_SKELETON=134217728,
AF_USE_ALTERNATIVE_FP_ANIM=268435456,
AF_BLENDOUT_WRT_LAST_FRAME=536870912,
AF_USE_FULL_BLENDING=1073741824,
},{
__index=function(c,d)a("fx.Enum.ScriptedAnimFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.ScriptedAnimFlags is read-only",2)end,
})]],
["shared/enums/SeatPosition.lua"]=[[
local a,b=error,tostring
return setmetatable({
SF_FrontDriverSide=-1,
SF_FrontPassengerSide=0,
SF_BackDriverSide=1,
SF_BackPassengerSide=2,
SF_AltFrontDriverSide=3,
SF_AltFrontPassengerSide=4,
SF_AltBackDriverSide=5,
SF_AltBackPassengerSide=6,
},{
__index=function(c,d)a("fx.Enum.SeatPosition has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.SeatPosition is read-only",2)end,
})]],
["shared/enums/SpawnReason.lua"]=[[
local a,b=error,tostring
return setmetatable({
SPAWN_REASON_DEATH=0,
SPAWN_REASON_TRANSITION=1,
SPAWN_REASON_MANUAL=2,
SPAWN_REASON_RESTORE_CHARACTER=3,
SPAWN_REASON_IN_VEHICLE=4,
},{
__index=function(c,d)a("fx.Enum.SpawnReason has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.SpawnReason is read-only",2)end,
})]],
["shared/enums/SwitchFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
SKIP_INTRO=1,
SKIP_OUTRO=2,
PAUSE_BEFORE_PAN=4,
PAUSE_BEFORE_OUTRO=8,
SKIP_PAN=16,
UNKNOWN_DEST=32,
DESCENT_ONLY=64,
START_FROM_CAMPOS=128,
PAUSE_BEFORE_ASCENT=256,
PAUSE_BEFORE_DESCENT=512,
ALLOW_SNIPER_AIM_INTRO=1024,
ALLOW_SNIPER_AIM_OUTRO=2048,
SKIP_TOP_DESCENT=4096,
SUPPRESS_OUTRO_FX=8192,
SUPPRESS_INTRO_FX=16384,
DELAY_ASCENT_FX=32768,
},{
__index=function(c,d)a("fx.Enum.SwitchFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.SwitchFlags is read-only",2)end,
})]],
["shared/enums/TattooFaction.lua"]=[[
local a,b=error,tostring
return setmetatable({
TATTOO_SP_MICHAEL=0,
TATTOO_SP_FRANKLIN=1,
TATTOO_SP_TREVOR=2,
TATTOO_MP_FM=3,
TATTOO_MP_FM_F=4,
},{
__index=function(c,d)a("fx.Enum.TattooFaction has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.TattooFaction is read-only",2)end,
})]],
["shared/enums/TempAction.lua"]=[[
local a,b=error,tostring
return setmetatable({
TA_NONE=0,
TA_WAIT=1,
TA_UNUSED=2,
TA_BRAKE_REVERSE=3,
TA_HANDBRAKE_TURN_LEFT=4,
TA_HANDBRAKE_TURN_RIGHT=5,
TA_HANDBRAKE_UNTIL_TIME_ENDS=6,
TA_TURN_LEFT=7,
TA_TURN_RIGHT=8,
TA_ACCELERATE=9,
TA_TURN_LEFT_10=10,
TA_TURN_RIGHT_11=11,
TA_UNUSED_12=12,
TA_TURN_LEFT_GO_REVERSE=13,
TA_TURN_RIGHT_GO_REVERSE=14,
TA_PLANE_FLY_UP=15,
TA_PLANE_FLY_STRAIGHT=16,
TA_PLANE_SHARP_LEFT=17,
TA_PLANE_SHARP_RIGHT=18,
TA_STRONG_BRAKE=19,
TA_TURN_LEFT_AND_STOP=20,
TA_TURN_RIGHT_AND_STOP=21,
TA_GO_IN_REVERSE=22,
TA_ACCELERATE_FAST=23,
TA_BRAKE_ACTION=24,
TA_HANDBRAKE_TURN_LEFT_MORE=25,
TA_HANDBRAKE_TURN_RIGHT_MORE=26,
TA_HANDBRAKE_BRAKE_STRAIGHT=27,
TA_BRAKE_STRONG_REVERSE_ACCELERATION=28,
TA_UNUSED_29=29,
TA_PERFORMS_BURNOUT=30,
TA_REV_ENGINE=31,
TA_ACCELERATE_VERY_STRONG=32,
TA_SURFACE_IN_SUBMARINE=33,
},{
__index=function(c,d)a("fx.Enum.TempAction has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.TempAction is read-only",2)end,
})]],
["shared/enums/TextFonts.lua"]=[[
local a,b=error,tostring
return setmetatable({
FONT_STANDARD=0,
FONT_CURSIVE=1,
FONT_ROCKSTAR_TAG=2,
FONT_LEADERBOAR0D=3,
FONT_CONDENSED=4,
FONT_STYLE_FIXED_WIDTH_NUMBERS=5,
FONT_CONDENSED_NOT_GAMERNAME=6,
FONT_STYLE_PRICEDOWN=7,
FONT_STYLE_TAXI=8,
},{
__index=function(c,d)a("fx.Enum.TextFonts has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.TextFonts is read-only",2)end,
})]],
["shared/enums/TraceFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
None=0,
IntersectWorld=1,
IntersectVehicles=2,
IntersectPeds=4,
IntersectRagdolls=8,
IntersectObjects=16,
IntersectWater=32,
IntersectGlass=64,
IntersectRiver=128,
IntersectFoliage=256,
IntersectEverything=-1,
},{
__index=function(c,d)a("fx.Enum.TraceFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.TraceFlags is read-only",2)end,
})]],
["shared/enums/TrackedStuntType.lua"]=[[
local a,b=error,tostring
return setmetatable({
ST_FRONTFLIP=0,
ST_BACKFLIP=1,
ST_SPIN=2,
ST_WHEELIE=3,
ST_STOPPIE=4,
ST_BOWLING_PIN=5,
ST_FOOTBALL=6,
ST_ROLL=7,
},{
__index=function(c,d)a("fx.Enum.TrackedStuntType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.TrackedStuntType is read-only",2)end,
})]],
["shared/enums/TrafficlightOverrideMode.lua"]=[[
local a,b=error,tostring
return setmetatable({
TLO_RED=0,
TLO_AMBER=1,
TLO_GREEN=2,
TLO_NONE=3,
},{
__index=function(c,d)a("fx.Enum.TrafficlightOverrideMode has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.TrafficlightOverrideMode is read-only",2)end,
})]],
["shared/enums/VehicleDrivetrainType.lua"]=[[
local a,b=error,tostring
return setmetatable({
INVALID=0,
FWD=1,
RWD=2,
AWD=3,
},{
__index=function(c,d)a("fx.Enum.VehicleDrivetrainType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleDrivetrainType is read-only",2)end,
})]],
["shared/enums/VehicleDrivingFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
None=0,
StopForVehicles=1,
StopForPeds=2,
SwerveAroundAllVehicles=4,
SteerAroundStationaryVehicles=8,
SteerAroundPeds=16,
SteerAroundObjects=32,
DontSteerAroundPlayerPed=64,
StopAtTrafficLights=128,
GoOffRoadWhenAvoiding=256,
AllowGoingWrongWay=512,
Reverse=1024,
UseWanderFallbackInsteadOfStraightLine=2048,
AvoidRestrictedAreas=4096,
PreventBackgroundPathfinding=8192,
AdjustCruiseSpeedBasedOnRoadSpeed=16384,
UseShortCutLinks=262144,
ChangeLanesAroundObstructions=524288,
UseSwitchedOffNodes=2097152,
PreferNavmeshRoute=4194304,
PlaneTaxiMode=8388608,
ForceStraightLine=16777216,
UseStringPullingAtJunctions=33554432,
TryToAvoidHighways=536870912,
ForceJoinInRoadDirection=1073741824,
StopAtDestination=2147483648,
DrivingModeStopForVehicles=786603,
DrivingModeStopForVehiclesStrict=262275,
DrivingModeAvoidVehicles=786469,
DrivingModeAvoidVehiclesReckless=786468,
DrivingModeStopForVehiclesIgnoreLights=786475,
DrivingModeAvoidVehiclesObeyLights=786597,
DrivingModeAvoidVehiclesStopForPedsObeyLights=786599,
},{
__index=function(c,d)a("fx.Enum.VehicleDrivingFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleDrivingFlags is read-only",2)end,
})]],
["shared/enums/VehicleHeadlightShadowFlags.lua"]=[[
local a,b=error,tostring
return setmetatable({
NO_HEADLIGHT_SHADOWS=0,
HEADLIGHTS_CAST_DYNAMIC_SHADOWS=1,
HEADLIGHTS_CAST_STATIC_SHADOWS=2,
HEADLIGHTS_CAST_FULL_SHADOWS=3,
},{
__index=function(c,d)a("fx.Enum.VehicleHeadlightShadowFlags has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleHeadlightShadowFlags is read-only",2)end,
})]],
["shared/enums/VehicleLightSetting.lua"]=[[
local a,b=error,tostring
return setmetatable({
NO_VEHICLE_LIGHT_OVERRIDE=0,
FORCE_VEHICLE_LIGHTS_OFF=1,
FORCE_VEHICLE_LIGHTS_ON=2,
SET_VEHICLE_LIGHTS_ON=3,
SET_VEHICLE_LIGHTS_OFF=4,
},{
__index=function(c,d)a("fx.Enum.VehicleLightSetting has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleLightSetting is read-only",2)end,
})]],
["shared/enums/VehicleLockState.lua"]=[[
local a,b=error,tostring
return setmetatable({
VEHICLELOCK_NONE=0,
VEHICLELOCK_UNLOCKED=1,
VEHICLELOCK_LOCKED=2,
VEHICLELOCK_LOCKOUT_PLAYER_ONLY=3,
VEHICLELOCK_LOCKED_PLAYER_INSIDE=4,
VEHICLELOCK_LOCKED_INITIALLY=5,
VEHICLELOCK_FORCE_SHUT_DOORS=6,
VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED=7,
VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED=8,
VEHICLELOCK_LOCKED_NO_PASSENGERS=9,
VEHICLELOCK_CANNOT_ENTER=10,
},{
__index=function(c,d)a("fx.Enum.VehicleLockState has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleLockState is read-only",2)end,
})]],
["shared/enums/VehicleMissionType.lua"]=[[
local a,b=error,tostring
return setmetatable({
None=0,
Cruise=1,
Ram=2,
Block=3,
GoTo=4,
Stop=5,
Attack=6,
Follow=7,
Flee=8,
Circle=9,
Escort=12,
GoToRacing=14,
FollowRecording=15,
PoliceBehaviour=16,
Land=19,
LandAndWait=20,
Crash=21,
PullOver=22,
HeliProtect=23,
},{
__index=function(c,d)a("fx.Enum.VehicleMissionType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleMissionType is read-only",2)end,
})]],
["shared/enums/VehicleModType.lua"]=[[
local a,b=error,tostring
return setmetatable({
VMT_SPOILER=0,
VMT_BUMPER_F=1,
VMT_BUMPER_R=2,
VMT_SKIRT=3,
VMT_EXHAUST=4,
VMT_CHASSIS=5,
VMT_GRILL=6,
VMT_BONNET=7,
VMT_WING_L=8,
VMT_WING_R=9,
VMT_ROOF=10,
VMT_ENGINE=11,
VMT_BRAKES=12,
VMT_GEARBOX=13,
VMT_HORN=14,
VMT_SUSPENSION=15,
VMT_ARMOUR=16,
VMT_NITROUS=17,
VMT_TURBO=18,
VMT_SUBWOOFER=19,
VMT_TYRE_SMOKE=20,
VMT_HYDRAULICS=21,
VMT_XENON_LIGHTS=22,
VMT_WHEELS=23,
VMT_WHEELS_REAR_OR_HYDRAULICS=24,
VMT_PLTHOLDER=25,
VMT_PLTVANITY=26,
VMT_INTERIOR1=27,
VMT_INTERIOR2=28,
VMT_INTERIOR3=29,
VMT_INTERIOR4=30,
VMT_INTERIOR5=31,
VMT_SEATS=32,
VMT_STEERING=33,
VMT_KNOB=34,
VMT_PLAQUE=35,
VMT_ICE=36,
VMT_TRUNK=37,
VMT_HYDRO=38,
VMT_ENGINEBAY1=39,
VMT_ENGINEBAY2=40,
VMT_ENGINEBAY3=41,
VMT_CHASSIS2=42,
VMT_CHASSIS3=43,
VMT_CHASSIS4=44,
VMT_CHASSIS5=45,
VMT_DOOR_L=46,
VMT_DOOR_R=47,
VMT_LIVERY_MOD=48,
VMT_LIGHTBAR=49,
},{
__index=function(c,d)a("fx.Enum.VehicleModType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleModType is read-only",2)end,
})]],
["shared/enums/VehicleMods.lua"]=[[
local a,b=error,tostring
return setmetatable({
Spoiler="spoiler",
FrontBumper="frontBumper",
RearBumper="rearBumper",
SideSkirt="sideSkirt",
Exhaust="exhaust",
Frame="frame",
Grille="grille",
Hood="hood",
LeftFender="leftFender",
RightFender="rightFender",
Roof="roof",
Engine="engine",
Brakes="brakes",
Transmission="transmission",
Horn="horn",
Suspension="suspension",
Armor="armor",
Turbo="turbo",
TyreSmoke="tyreSmoke",
Xenon="xenon",
FrontWheels="frontWheels",
RearWheels="rearWheels",
PlateHolder="plateHolder",
VanityPlate="vanityPlate",
TrimA="trimA",
Ornaments="ornaments",
Dashboard="dashboard",
Dial="dial",
DoorSpeaker="doorSpeaker",
Seats="seats",
SteeringWheel="steeringWheel",
Shifter="shifter",
Plaque="plaque",
Speakers="speakers",
Trunk="trunk",
Hydraulics="hydraulics",
EngineBlock="engineBlock",
AirFilter="airFilter",
Struts="struts",
ArchCover="archCover",
Aerials="aerials",
TrimB="trimB",
Tank="tank",
LeftDoor="leftDoor",
RightDoor="rightDoor",
Livery="livery",
Lightbar="lightbar",
},{
__index=function(c,d)a("fx.Enum.VehicleMods has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleMods is read-only",2)end,
})]],
["shared/enums/VehicleNodeProperties.lua"]=[[
local a,b=error,tostring
return setmetatable({
OFF_ROAD=1,
ON_PLAYERS_ROAD=2,
NO_BIG_VEHICLES=4,
SWITCHED_OFF=8,
TUNNEL_OR_INTERIOR=16,
LEADS_TO_DEAD_END=32,
HIGHWAY=64,
JUNCTION=128,
TRAFFIC_LIGHT=256,
GIVE_WAY=512,
WATER=1024,
},{
__index=function(c,d)a("fx.Enum.VehicleNodeProperties has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleNodeProperties is read-only",2)end,
})]],
["shared/enums/VehiclePlateIndicies.lua"]=[[
local a,b=error,tostring
return setmetatable({
SanAndreasCursive=0,
SanAndreasBlack=1,
SanAndreasBlue=2,
SanAndreasPlain=3,
SRExcept=4,
NorthYankton=5,
ECola=6,
LasVenturas=7,
LiberyCity=8,
LSCarMeet=9,
LSPanic=10,
LSPounders=11,
Sprunk=12,
},{
__index=function(c,d)a("fx.Enum.VehiclePlateIndicies has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehiclePlateIndicies is read-only",2)end,
})]],
["shared/enums/VehiclePlateType.lua"]=[[
local a,b=error,tostring
return setmetatable({
VPT_FRONT_AND_BACK_PLATES=0,
VPT_FRONT_PLATES=1,
VPT_BACK_PLATES=2,
VPT_NONE=3,
},{
__index=function(c,d)a("fx.Enum.VehiclePlateType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehiclePlateType is read-only",2)end,
})]],
["shared/enums/VehicleType.lua"]=[[
local a,b=error,tostring
return setmetatable({
VEHICLE_TYPE_NONE=-1,
VEHICLE_TYPE_CAR=0,
VEHICLE_TYPE_PLANE=1,
VEHICLE_TYPE_TRAILER=2,
VEHICLE_TYPE_QUADBIKE=3,
VEHICLE_TYPE_DRAFT=4,
VEHICLE_TYPE_SUBMARINECAR=5,
VEHICLE_TYPE_AMPHIBIOUS_AUTOMOBILE=6,
VEHICLE_TYPE_AMPHIBIOUS_QUADBIKE=7,
VEHICLE_TYPE_HELI=8,
VEHICLE_TYPE_BLIMP=9,
VEHICLE_TYPE_AUTOGYRO=10,
VEHICLE_TYPE_BIKE=11,
VEHICLE_TYPE_BICYCLE=12,
VEHICLE_TYPE_BOAT=13,
VEHICLE_TYPE_TRAIN=14,
VEHICLE_TYPE_SUBMARINE=15,
},{
__index=function(c,d)a("fx.Enum.VehicleType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleType is read-only",2)end,
})]],
["shared/enums/VehicleWheelType.lua"]=[[
local a,b=error,tostring
return setmetatable({
VWT_SPORT=0,
VWT_MUSCLE=1,
VWT_LOWRIDER=2,
VWT_SUV=3,
VWT_OFFROAD=4,
VWT_TUNER=5,
VWT_BIKE=6,
VWT_HIEND=7,
VWT_SUPERMOD1=8,
VWT_SUPERMOD2=9,
VWT_SUPERMOD3=10,
VWT_SUPERMOD4=11,
VWT_SUPERMOD5=12,
},{
__index=function(c,d)a("fx.Enum.VehicleWheelType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleWheelType is read-only",2)end,
})]],
["shared/enums/VehicleWheels.lua"]=[[
local a,b=error,tostring
return setmetatable({
WHEEL_LF=0,
WHEEL_RF=1,
WHEEL_LM=2,
WHEEL_RM=3,
WHEEL_LR=4,
WHEEL_RR=5,
WHEEL_BF=6,
WHEEL_BR=7,
MAX_WHEELS=8,
},{
__index=function(c,d)a("fx.Enum.VehicleWheels has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.VehicleWheels is read-only",2)end,
})]],
["shared/enums/ViolationType.lua"]=[[
local a,b=error,tostring
return setmetatable({
VT_PAVED_PEDESTRIAN_AREAS=0,
VT_RUNNING_REDS=1,
VT_AGAINST_TRAFFIC=2,
},{
__index=function(c,d)a("fx.Enum.ViolationType has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.ViolationType is read-only",2)end,
})]],
["shared/enums/WeaponAnimationOverrides.lua"]=[[
local a,b=error,tostring
return setmetatable({
Ballistic=1429513766,
Default=-455129387,
Franklin=1153582740,
Gang=-1140429928,
Michael=1435709240,
MP_F_Freemode=-1397683069,
Trevor=657970604,
Hillbilly=-2063346679,
Gang1H=1917483703,
FirstPerson=-298260256,
FirstPersonAiming=-949839965,
FirstPersonRNG=-1526868472,
FirstPersonScope=672234530,
FirstPersonMichael=-358460149,
FirstPersonMichaelAiming=1047524111,
FirstPersonMichaelRNG=-1213716799,
FirstPersonMichaelScope=-984297577,
FirstPersonFranklin=-1006168518,
FirstPersonFranklinAiming=1028356867,
FirstPersonFranklinRNG=-1099321164,
FirstPersonFranklinScope=-1343593069,
FirstPersonTrevor=-1503833263,
FirstPersonTrevorAiming=-104952103,
FirstPersonTrevorRNG=-780014327,
FirstPersonTrevorScope=883326317,
FirstPersonMPFemale=-2077140929,
Fat=-986602487,
SuperFat=1386108800,
Female=1830115867,
GangFemale=1737154434,
},{
__index=function(c,d)a("fx.Enum.WeaponAnimationOverrides has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.WeaponAnimationOverrides is read-only",2)end,
})]],
["shared/enums/WindowId.lua"]=[[
local a,b=error,tostring
return setmetatable({
VEH_EXT_WINDOW_LF=0,
VEH_EXT_WINDOW_RF=1,
VEH_EXT_WINDOW_LR=2,
VEH_EXT_WINDOW_RR=3,
VEH_EXT_WINDOW_LM=4,
VEH_EXT_WINDOW_RM=5,
VEH_EXT_WINDSCREEN=6,
VEH_EXT_WINDSCREEN_R=7,
},{
__index=function(c,d)a("fx.Enum.WindowId has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.WindowId is read-only",2)end,
})]],
["shared/enums/WindowTints.lua"]=[[
local a,b=error,tostring
return setmetatable({
WINDOWTINT_NONE=0,
WINDOWTINT_PURE_BLACK=1,
WINDOWTINT_DARKSMOKE=2,
WINDOWTINT_LIGHTSMOKE=3,
WINDOWTINT_STOCK=4,
WINDOWTINT_LIMO=5,
WINDOWTINT_GREEN=6,
},{
__index=function(c,d)a("fx.Enum.WindowTints has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.WindowTints is read-only",2)end,
})]],
["shared/enums/ZoneScumminess.lua"]=[[
local a,b=error,tostring
return setmetatable({
SCUMMINESS_POSH=0,
SCUMMINESS_NICE=1,
SCUMMINESS_ABOVE_AVERAGE=2,
SCUMMINESS_BELOW_AVERAGE=3,
SCUMMINESS_CRAP=4,
SCUMMINESS_SCUM=5,
},{
__index=function(c,d)a("fx.Enum.ZoneScumminess has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.ZoneScumminess is read-only",2)end,
})]],
["shared/enums/neonIndex.lua"]=[[
local a,b=error,tostring
return setmetatable({
NEON_BACK=0,
NEON_RIGHT=1,
NEON_LEFT=2,
NEON_FRONT=3,
},{
__index=function(c,d)a("fx.Enum.neonIndex has no member '"..b(d).."'",2)end,
__newindex=function()a("fx.Enum.neonIndex is read-only",2)end,
})]],
["server/Blip.lua"]=[[
local a,d=...
local e,f=type,GetHashKey
local g,i,j=math.type,math.tointeger,math.modf
local k=d.defineType("Blip",{kind="handle"})
local l,m,n=k.methods,k.getters,k.setters
local p,q,r=k.statics,k.staticGetters,k.staticSetters
local s=d.lazyWrap("Blip")
do
local t=AddBlipForArea
p.addForArea=function(u,v,w)
v=(v or 0)+0.0
w=(w or 0)+0.0
local A=t(u.x,u.y,u.z,v,w)
return s(A)
end
end
do
local t=AddBlipForCoord
p.addForCoord=function(u)
local v=t(u.x,u.y,u.z)
return s(v)
end
end
do
local t=AddBlipForRadius
p.addForRadius=function(u,v)
v=(v or 0)+0.0
local w=t(u.x,u.y,u.z,v)
return s(w)
end
end
do
local t=RemoveBlip
l.remove=function(u)
t(u.handle)
d.forget(u)
return nil
end
end
do
local t=SetBlipSprite
l.setSprite=function(u,v)
if g(v)=="float"then v=i((j(v)))or 0 end
t(u.handle,v)
return u
end
end
do
local t,u,v,w=AddBlipForCoord,AddBlipForEntity,AddBlipForRadius,AddBlipForArea
local A=SetBlipSprite
local B=error
p.create=function(C)
local D
if C.entity then
D=u(d.toHandle(C.entity))
elseif C.radius then
local E=C.radius.coords
D=v(E.x+0.0,E.y+0.0,E.z+0.0,C.radius.radius+0.0)
elseif C.area then
local E=C.area.coords
D=w(E.x+0.0,E.y+0.0,E.z+0.0,C.area.width+0.0,C.area.height+0.0)
else
local E=C.coords
if not E then B("Blip.create: one of coords, entity, radius or area is required",2)end
D=t(E.x+0.0,E.y+0.0,E.z+0.0)
end
local E=k.wrap(D)
if E and C.sprite then A(D,C.sprite)end
return E
end
end
return d.finalize(k)]],
["server/Cfx.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineModule("Cfx")
local i,j,k=h.methods,h.getters,h.setters
local l,m,n=h.statics,h.staticGetters,h.staticSetters
do
local o=AddConvarChangeListener
l.addConvarChangeListener=function(p,q)
return o(p,q)
end
end
do
local o=AddStateBagChangeHandler
l.addStateBagChangeHandler=function(p,q,r)
return o(p,q,r)
end
end
do
local o=GetAllObjects
m.allObjects=function()
return o()
end
end
do
local o=GetAllPeds
m.allPeds=function()
return o()
end
end
do
local o=GetAllVehicles
m.allVehicles=function()
return o()
end
end
do
local o=CancelEvent
l.cancelEvent=function()
return o()
end
end
do
local o=GetConsoleBuffer
m.consoleBuffer=function()
return o()
end
end
do
local o=GetCurrentResourceName
m.currentResourceName=function()
return o()
end
end
do
local o=DeleteFunctionReference
l.deleteFunctionReference=function(p)
return o(p)
end
end
do
local o=DeleteResourceKvp
l.deleteResourceKvp=function(p)
return o(p)
end
end
do
local o=DeleteResourceKvpNoSync
l.deleteResourceKvpNoSync=function(p)
return o(p)
end
end
do
local o=DuplicateFunctionReference
l.duplicateFunctionReference=function(p)
return o(p)
end
end
do
local o=EnableEnhancedHostSupport
l.enableEnhancedHostSupport=function(p)
return o(p)
end
end
do
local o=EndFindKvp
l.endFindKvp=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p)
end
end
do
local o=ExecuteCommand
l.executeCommand=function(p)
return o(p)
end
end
do
local o=FindKvp
l.findKvp=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p)
end
end
do
local o=FlagServerAsPrivate
l.flagServerAsPrivate=function(p)
return o(p)
end
end
do
local o=FlushResourceKvp
l.flushResourceKvp=function()
return o()
end
end
do
local o=FormatStackTrace
l.formatStackTrace=function(p)
return o(p)
end
end
do
local o=GetGameBuildNumber
m.gameBuildNumber=function()
return o()
end
end
do
local o=GetGameName
m.gameName=function()
return o()
end
end
do
local o=GetGameTimer
m.gameTimer=function()
return o()
end
end
do
local o=GetConvar
l.getConvar=function(p,q)
return o(p,q)
end
end
do
local o=GetConvarBool
l.getConvarBool=function(p,q)
local r=o(p,q)
return(r~=false and r~=0 and r~=nil)
end
end
do
local o=GetConvarFloat
l.getConvarFloat=function(p,q)
q=(q or 0)+0.0
return o(p,q)
end
end
do
local o=GetConvarInt
l.getConvarInt=function(p,q)
if e(q)=="float"then q=f((g(q)))or 0 end
return o(p,q)
end
end
do
local o=GetEntitiesInRadius
l.getEntitiesInRadius=function(p,q,r,s,t)
q=(q or 0)+0.0
if e(r)=="float"then r=f((g(r)))or 0 end
return o(p.x,p.y,p.z,q,r,s,t)
end
end
do
local o=GetGamePool
l.getGamePool=function(p)
return o(p)
end
end
do
local o=d
l.getHashKey=function(p)
return o(p)
end
end
do
local o=GetNumResourceMetadata
l.getNumResourceMetadata=function(p,q)
return o(p,q)
end
end
do
local o=GetPasswordHash
l.getPasswordHash=function(p)
return o(p)
end
end
do
local o=GetPlayerFromIndex
l.getPlayerFromIndex=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p)
end
end
do
local o=GetPlayerFromStateBagName
l.getPlayerFromStateBagName=function(p)
return o(p)
end
end
do
local o=GetResourceByFindIndex
l.getResourceByFindIndex=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p)
end
end
do
local o=GetResourceCommands
l.getResourceCommands=function(p)
return o(p)
end
end
do
local o=GetResourceKvpFloat
l.getResourceKvpFloat=function(p)
return o(p)
end
end
do
local o=GetResourceKvpInt
l.getResourceKvpInt=function(p)
return o(p)
end
end
do
local o=GetResourceKvpString
l.getResourceKvpString=function(p)
return o(p)
end
end
do
local o=GetResourceMetadata
l.getResourceMetadata=function(p,q,r)
if e(r)=="float"then r=f((g(r)))or 0 end
return o(p,q,r)
end
end
do
local o=GetResourcePath
l.getResourcePath=function(p)
return o(p)
end
end
do
local o=GetResourceState
l.getResourceState=function(p)
return o(p)
end
end
do
local o=GetStateBagKeys
l.getStateBagKeys=function(p)
return o(p)
end
end
do
local o=GetStateBagValue
l.getStateBagValue=function(p,q)
return o(p,q)
end
end
do
local o=GetHostId
m.hostId=function()
return o()
end
end
do
local o=GetInstanceId
m.instanceId=function()
return o()
end
end
do
local o=GetInvokingResource
m.invokingResource=function()
return o()
end
end
do
local o=IsAceAllowed
l.isAceAllowed=function(p)
local q=o(p)
return(q~=false and q~=0 and q~=nil)
end
end
do
local o=IsDuplicityVersion
m.isDuplicityVersion=function()
local p=o()
return(p~=false and p~=0 and p~=nil)
end
end
do
local o=IsPrincipalAceAllowed
l.isPrincipalAceAllowed=function(p,q)
local r=o(p,q)
return(r~=false and r~=0 and r~=nil)
end
end
do
local o=LoadResourceFile
l.loadResourceFile=function(p,q)
return o(p,q)
end
end
do
local o=GetNumPlayerIndices
m.numPlayerIndices=function()
return o()
end
end
do
local o=GetNumResources
m.numResources=function()
return o()
end
end
do
local o=PerformHttpRequestInternal
l.performHttpRequestInternal=function(p,q)
if e(q)=="float"then q=f((g(q)))or 0 end
return o(p,q)
end
end
do
local o=PerformHttpRequestInternalEx
l.performHttpRequestInternalEx=function(p)
return o(p)
end
end
do
local o=PrintStructuredTrace
l.printStructuredTrace=function(p)
return o(p)
end
end
do
local o=ProfilerEnterScope
l.profilerEnterScope=function(p)
return o(p)
end
end
do
local o=ProfilerExitScope
l.profilerExitScope=function()
return o()
end
end
do
local o=ProfilerIsRecording
l.profilerIsRecording=function()
local p=o()
return(p~=false and p~=0 and p~=nil)
end
end
do
local o=RegisterCommand
l.registerCommand=function(p,q,r)
return o(p,q,r)
end
end
do
local o=RegisterConsoleListener
l.registerConsoleListener=function(p)
return o(p)
end
end
do
local o=GetRegisteredCommands
m.registeredCommands=function()
return o()
end
end
do
local o=RegisterResourceAsEventHandler
l.registerResourceAsEventHandler=function(p)
return o(p)
end
end
do
local o=RegisterResourceAsset
l.registerResourceAsset=function(p,q)
return o(p,q)
end
end
do
local o=RegisterResourceBuildTaskFactory
l.registerResourceBuildTaskFactory=function(p,q)
return o(p,q)
end
end
do
local o=RemoveConvarChangeListener
l.removeConvarChangeListener=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p)
end
end
do
local o=RemoveStateBagChangeHandler
l.removeStateBagChangeHandler=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p)
end
end
do
local o=SaveResourceFile
l.saveResourceFile=function(p,q,r,s)
if e(s)=="float"then s=f((g(s)))or 0 end
local t=o(p,q,r,s)
return(t~=false and t~=0 and t~=nil)
end
end
do
local o=ScanResourceRoot
l.scanResourceRoot=function(p,q)
return o(p,q)
end
end
do
local o=ScheduleResourceTick
l.scheduleResourceTick=function(p)
return o(p)
end
end
do
local o=SetConvar
l.setConvar=function(p,q)
return o(p,q)
end
end
do
local o=SetConvarReplicated
l.setConvarReplicated=function(p,q)
return o(p,q)
end
end
do
local o=SetConvarServerInfo
l.setConvarServerInfo=function(p,q)
return o(p,q)
end
end
do
local o=SetGameType
l.setGameType=function(p)
return o(p)
end
end
do
local o=SetHttpHandler
l.setHttpHandler=function(p)
return o(p)
end
end
do
local o=SetMapName
l.setMapName=function(p)
return o(p)
end
end
do
local o=SetResourceKvp
l.setResourceKvp=function(p,q)
return o(p,q)
end
end
do
local o=SetResourceKvpFloat
l.setResourceKvpFloat=function(p,q)
q=(q or 0)+0.0
return o(p,q)
end
end
do
local o=SetResourceKvpFloatNoSync
l.setResourceKvpFloatNoSync=function(p,q)
q=(q or 0)+0.0
return o(p,q)
end
end
do
local o=SetResourceKvpInt
l.setResourceKvpInt=function(p,q)
if e(q)=="float"then q=f((g(q)))or 0 end
return o(p,q)
end
end
do
local o=SetResourceKvpIntNoSync
l.setResourceKvpIntNoSync=function(p,q)
if e(q)=="float"then q=f((g(q)))or 0 end
return o(p,q)
end
end
do
local o=SetResourceKvpNoSync
l.setResourceKvpNoSync=function(p,q)
return o(p,q)
end
end
do
local o=SetRoutingBucketEntityLockdownMode
l.setRoutingBucketEntityLockdownMode=function(p,q)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p,q)
end
end
do
local o=SetRoutingBucketPopulationEnabled
l.setRoutingBucketPopulationEnabled=function(p,q)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p,q)
end
end
do
local o=SetStateBagValue
l.setStateBagValue=function(p,q,r,s,t)
if e(s)=="float"then s=f((g(s)))or 0 end
return o(p,q,r,s,t)
end
end
do
local o=StartFindKvp
l.startFindKvp=function(p)
return o(p)
end
end
do
local o=StartResource
l.startResource=function(p)
local q=o(p)
return(q~=false and q~=0 and q~=nil)
end
end
do
local o=StateBagHasKey
l.stateBagHasKey=function(p,q)
local r=o(p,q)
return(r~=false and r~=0 and r~=nil)
end
end
do
local o=StopResource
l.stopResource=function(p)
local q=o(p)
return(q~=false and q~=0 and q~=nil)
end
end
do
local o=TriggerClientEventInternal
l.triggerClientEventInternal=function(p,q,r,s)
if e(s)=="float"then s=f((g(s)))or 0 end
return o(p,q,r,s)
end
end
do
local o=TriggerEventInternal
l.triggerEventInternal=function(p,q,r)
if e(r)=="float"then r=f((g(r)))or 0 end
return o(p,q,r)
end
end
do
local o=TriggerLatentClientEventInternal
l.triggerLatentClientEventInternal=function(p,q,r,s,t)
if e(s)=="float"then s=f((g(s)))or 0 end
if e(t)=="float"then t=f((g(t)))or 0 end
return o(p,q,r,s,t)
end
end
do
local o=VerifyPasswordHash
l.verifyPasswordHash=function(p,q)
local r=o(p,q)
return(r~=false and r~=0 and r~=nil)
end
end
do
local o=WasEventCanceled
m.wasEventCanceled=function()
local p=o()
return(p~=false and p~=0 and p~=nil)
end
end
return b.finalizeModule(h)]],
["server/Command.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineModule("Command")
local j,k,l=h.methods,h.getters,h.setters
local m,q,r=h.statics,h.staticGetters,h.staticSetters
do
local t=print
local u,v,w,x=
RegisterCommand,TriggerEvent,TriggerClientEvent,AddEventHandler
local y,z,A,B,C=c,tostring,tonumber,error,pcall
local D,E,F=table.concat,table.unpack,math.tointeger
local G=a.Schema
local H=a.Logger("fx"):child("Command")
local I={
integer=function(I)return F(A(I))or I end,
number=function(I)return A(I)or I end,
boolean=function(I)
if I=="true"or I=="1"or I=="yes"then return true end
if I=="false"or I=="0"or I=="no"then return false end
return I
end,
}
local function J(K)
if y(K)~="string"then return nil end
return I[K:match("^(%a+)")or""]
end
local function K(L,M,N)
local O={"/"..L}
for P=1,N do
local Q=M[P]
O[#O+1]="<"..(Q and Q.name or("arg"..P))..">"
end
return D(O," ")
end
local function L(M,N)
if not b.isServer then
v("chat:addMessage",{args={N}})
elseif M==0 then
t(N)
else
w("chat:addMessage",M,{args={N}})
end
end
local function M(N,O,P)
if y(N)~="string"or not N:match("^[%w_%-:]+$")then
B("fx.Command: name must be letters, digits, '_', '-' or ':', got "..z(N),3)
end
local Q={}
if y(O)=="function"then P=O
elseif y(O)=="table"then Q=O end
if y(P)~="function"then B("fx.Command("..N.."): handler must be a function",3)end
local R=Q.args or{}
local S=Q.params or{}
local U,V=C(G.args,R)
if not U then B("fx.Command("..N.."): "..z(V),3)end
local W=#R
local X={}
for Y=1,W do X[Y]=J(R[Y])end
u(N,function(Y,Z,_)
local aa=F(A(Y))or 0
local ba=Z or{}
if Q.rest and W>0 and#ba>W then
ba={E(ba,1,W-1)}
ba[W]=D(Z," ",W)
end
local ca={}
for da=1,#ba do
local ea=X[da]
if ea then ca[da]=ea(ba[da])else ca[da]=ba[da]end
end
local da={
name=N,source=aa,raw=_,
player=b.isServer and aa>0 and a.Player(aa)or nil,
reply=function(da)L(aa,z(da))end,
}
local ea,fa=V(#ba,E(ca,1,#ba))
if not ea then
da.reply(("%s (%s)"):format(K(N,S,W),fa))
return
end
local ga=R[W]=="..."and#ca or W
local ha,ia=C(P,da,E(ca,1,ga))
if not ha then H:error("/%s: %s",N,z(ia))end
end,Q.restricted==true)
if Q.help or#S>0 then
local Y={"/"..N,Q.help or"",S}
if b.isServer then
w("chat:addSuggestion",-1,E(Y))
x("playerJoining",function()
w("chat:addSuggestion",source,E(Y))
end)
else
v("chat:addSuggestion",E(Y))
end
end
end
rawset(h,"call",M)
end
return b.finalizeModule(h)]],
["server/Convar.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineModule("Convar")
local i,j,l=h.methods,h.getters,h.setters
local m,n,o=h.statics,h.staticGetters,h.staticSetters
do
local p,q,s,u=GetConvar,GetConvarInt,GetConvarFloat,GetConvarBool
local v,w=AddConvarChangeListener,RemoveConvarChangeListener
local x,y,z,A,B,C=c,tostring,error,pcall,setmetatable,math.type
local D=a.Logger("fx"):child("Convar")
local E={}
local F={}
local G={
__index=function(G,H)
if H=="value"then return p(G.name,"")end
return E[H]
end,
__newindex=function(G,H)
if H=="value"or E[H]then z(y(G).."."..y(H).." is read-only",2)end
z(y(G).." has no property '"..y(H).."'",2)
end,
__name="fx.Convar",
__tostring=function(G)return"fx.Convar("..G.name..")"end,
}
function E:get(I)
if I~=nil and x(I)~="string"then z(y(self)..":get: default must be a string",2)end
return p(self.name,I or"")
end
function E:getInt(I)
if I~=nil and C(I)~="integer"then z(y(self)..":getInt: default must be an integer",2)end
return q(self.name,I or 0)
end
function E:getFloat(I)
if I~=nil and x(I)~="number"then z(y(self)..":getFloat: default must be a number",2)end
return s(self.name,(I or 0.0)+0.0)
end
function E:getBool(I)
if I~=nil and x(I)~="boolean"then z(y(self)..":getBool: default must be a boolean",2)end
local J=u(self.name,I==true)
return J==true or J==1
end
function E:onChange(I)
if x(I)~="function"then z(y(self)..":onChange: fn must be a function",2)end
local J=v(self.name,function(J)
local K,L=A(I,p(J,""),J)
if not K then D:error("%s onChange: %s",J,y(L))end
end)
local K=false
return function()
if K then return end
K=true
w(J)
end
end
if b.isServer then
local H,I,J=SetConvar,SetConvarReplicated,SetConvarServerInfo
function E:set(L,M)
local N=x(L)
if N~="string"and N~="number"and N~="boolean"then
z(y(self)..":set: value must be a string, a number or a boolean",2)
end
local O=y(L)
if M==nil or M=="local"then H(self.name,O)
elseif M=="replicated"then I(self.name,O)
elseif M=="serverInfo"then J(self.name,O)
else z(y(self)..":set: mode must be 'local', 'replicated' or 'serverInfo'",2)end
end
end
local function H(I)
if x(I)~="string"or I==""then z("fx.Convar: name must be a non-empty string",3)end
local J=F[I]
if not J then
J=B({name=I},G)
F[I]=J
end
return J
end
rawset(h,"call",H)
end
return b.finalizeModule(h)]],
["server/Entity.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local f,g,i=math.type,math.tointeger,math.modf
local j=b.defineType("Entity",{kind="entity"})
local k,l,m=j.methods,j.getters,j.setters
local n,p,q=j.statics,j.staticGetters,j.staticSetters
local t=b.lazyWrap("Blip")
local u=b.lazyWrap("Entity")
local v=b.lazyWrap("Model")
do
local A=AddBlipForEntity
k.addBlip=function(B)
local C=A(B.handle)
return t(C)
end
end
do
local A=ApplyForceToEntity
k.applyForce=function(B,C,D,E,F,G,H,I,J,K)
if f(C)=="float"then C=g((i(C)))or 0 end
if f(F)=="float"then F=g((i(F)))or 0 end
A(B.handle,C,D.x,D.y,D.z,E.x,E.y,E.z,F,G,H,I,J,K)
return B
end
end
do
local A=GetEntityAttachedTo
l.attachedTo=function(B)
local C=A(B.handle)
return u(C)
end
end
do
local A=GetEntityCollisionDisabled
l.collisionDisabled=function(B)
local C=A(B.handle)
return(C~=false and C~=0 and C~=nil)
end
end
do
local A=DeleteEntity
k.delete=function(B)
A(B.handle)
b.forget(B)
return nil
end
end
do
local A=DeleteTrain
k.deleteTrain=function(B)
A(B.handle)
return B
end
end
do
local A=EnsureEntityStateBag
k.ensureStateBag=function(B)
A(B.handle)
return B
end
end
do
local A=NetworkGetFirstEntityOwner
l.firstOwner=function(B)
return A(B.handle)
end
end
do
local A=FreezeEntityPosition
k.freeze=function(B,C)
A(B.handle,C)
return B
end
end
do
local A=NetworkGetEntityFromNetworkId
n.getFromNetworkId=function(B)
if f(B)=="float"then B=g((i(B)))or 0 end
local C=A(B)
return u(C)
end
end
do
local A=GetEntityFromStateBagName
n.getFromStateBagName=function(B)
local C=A(B)
return u(C)
end
end
do
local A=GetEntityHeading
l.heading=function(B)
return A(B.handle)
end
end
do
local A=SetEntityHeading
m.heading=function(B,C)
C=(C or 0)+0.0
A(B.handle,C)
end
end
do
local A=GetEntityHealth
l.health=function(B)
return A(B.handle)
end
end
do
local A=IsEntityPositionFrozen
l.isPositionFrozen=function(B)
local C=A(B.handle)
return(C~=false and C~=0 and C~=nil)
end
end
do
local A=IsEntityVisible
l.isVisible=function(B)
local C=A(B.handle)
return(C~=false and C~=0 and C~=nil)
end
end
do
local A=GetEntityMaxHealth
l.maxHealth=function(B)
return A(B.handle)
end
end
do
local A=GetEntityModel
l.model=function(B)
local C=A(B.handle)
return v(C)
end
end
do
local A=GetNetTypeFromEntity
l.netType=function(B)
return A(B.handle)
end
end
do
local A=NetworkGetNetworkIdFromEntity
l.networkId=function(B)
return A(B.handle)
end
end
do
local A=GetEntityOrphanMode
l.orphanMode=function(B)
return A(B.handle)
end
end
do
local A=SetEntityOrphanMode
m.orphanMode=function(B,C)
if f(C)=="float"then C=g((i(C)))or 0 end
A(B.handle,C)
end
end
do
local A=NetworkGetEntityOwner
l.owner=function(B)
return A(B.handle)
end
end
do
local A=GetEntityPopulationType
l.populationType=function(B)
return A(B.handle)
end
end
do
local A=GetEntityCoords
l.position=function(B)
return A(B.handle)
end
end
do
local A=SetEntityCoords
m.position=function(B,C)
A(B.handle,C.x,C.y,C.z,false,false,false,false)
end
end
do
local A=GetEntityRemoteSyncedScenesAllowed
l.remoteSyncedScenesAllowed=function(B)
local C=A(B.handle)
return(C~=false and C~=0 and C~=nil)
end
end
do
local A=SetEntityRemoteSyncedScenesAllowed
m.remoteSyncedScenesAllowed=function(B,C)
A(B.handle,C)
end
end
do
local A=GetEntityRotation
l.rotation=function(B)
return A(B.handle)
end
end
do
local A=GetEntityRotationVelocity
l.rotationVelocity=function(B)
return A(B.handle)
end
end
do
local A=GetEntityRoutingBucket
l.routingBucket=function(B)
return A(B.handle)
end
end
do
local A=SetEntityRoutingBucket
m.routingBucket=function(B,C)
if f(C)=="float"then C=g((i(C)))or 0 end
A(B.handle,C)
end
end
do
local A=GetEntityScript
l.script=function(B)
return A(B.handle)
end
end
do
local A=SetEntityCoords
k.setCoords=function(B,C,D,E,F,G)
A(B.handle,C.x,C.y,C.z,D,E,F,G)
return B
end
end
do
local A=SetEntityDistanceCullingRadius
k.setDistanceCullingRadius=function(B,C)
C=(C or 0)+0.0
A(B.handle,C)
return B
end
end
do
local A=SetEntityIgnoreRequestControlFilter
k.setIgnoreRequestControlFilter=function(B,C)
A(B.handle,C)
return B
end
end
do
local A=SetEntityRotation
k.setRotation=function(B,C,D,E,F,G)
C=(C or 0)+0.0
D=(D or 0)+0.0
E=(E or 0)+0.0
if f(F)=="float"then F=g((i(F)))or 0 end
A(B.handle,C,D,E,F,G)
return B
end
end
do
local A=GetEntitySpeed
l.speed=function(B)
return A(B.handle)
end
end
do
local A=TaskGoToEntity
k.taskGoToEntity=function(B,C,D,E,F,G,H)
if c(C)=="table"then C=C.handle end
if f(D)=="float"then D=g((i(D)))or 0 end
E=(E or 0)+0.0
F=(F or 0)+0.0
G=(G or 0)+0.0
if f(H)=="float"then H=g((i(H)))or 0 end
A(B.handle,C,D,E,F,G,H)
return B
end
end
do
local A=TaskShootAtEntity
k.taskShootAtEntity=function(B,C,D,E)
if c(C)=="table"then C=C.handle end
if f(D)=="float"then D=g((i(D)))or 0 end
local F=c(E)
if F=="string"then E=d(E)elseif F=="table"then E=E.handle end
A(B.handle,C,D,E)
return B
end
end
do
local A=GetEntityType
l.type=function(B)
return A(B.handle)
end
end
do
local A=GetEntityVelocity
l.velocity=function(B)
return A(B.handle)
end
end
do
local A=SetEntityVelocity
m.velocity=function(B,C)
A(B.handle,C.x,C.y,C.z)
end
end
do
local A=DeleteEntity
local B,C,D=DoesEntityExist,GetEntityType,NetworkGetEntityOwner
local E,F=SetEntityOrphanMode,SetEntityRoutingBucket
local G=Citizen.InvokeNative
local H=a.Promise
local I=H._internal.newError
local J,K,L=setmetatable,c,tostring
j.safe={exists=true,handle=true,readyAsync=true,states=true,state=true}
l.exists=function(M)
local N=B(M.handle)
return N~=false and N~=0 and N~=nil
end
local M=J({},{__mode="k"})
l.states=function(N)
local O=M[N]
if O==nil then
O=b.states.entity(N)
M[N]=O
end
return O
end
l.state=l.states
k.readyAsync=function(N,O,Q)
local R=N.handle
return b.waitUntil(L(N)..":readyAsync",function()
if not B(R)then return false end
return Q==false or D(R)~=-1
end,O,N)
end
k.invoke=function(N,O,...)
return G(O,N.handle,...)
end
local N={b.lazyWrap("Ped"),b.lazyWrap("Vehicle"),b.lazyWrap("Object")}
local O,Q=b.entityCache,j.mt
j.wrap=function(R)
if R==nil or R==0 then return nil end
if K(R)=="table"then return R end
local S=N[C(R)]
if S then return S(R)end
local U=O[R]
if U~=nil then return U end
U=J({handle=R},Q)
O[R]=U
return U
end
function b.applyServerOptions(R,S)
if not S then return end
if S.routingBucket then F(R.handle,S.routingBucket)end
if S.orphanMode then E(R.handle,S.orphanMode)end
end
function b.makeCreate(R,S)
return function(U,V,W,X)
local Y=b.hash(U)
if K(Y)~="number"then
return H.reject(I("Error",("%s: invalid model '%s'"):format(R,L(U))))
end
local Z=S(Y,V,W,X)
if not Z then
return H.reject(I("Error",("%s: creation failed for model '%s' (no free object id, or invalid arguments)"):format(R,L(U))))
end
return Z:readyAsync(X and X.timeout,not(X and X.waitOwner==false)):next(nil,function(_)
if B(Z.handle)then A(Z.handle)end
b.forget(Z)
return H.reject(_)
end)
end
end
function b.heading(R,S)
if S~=nil then return S+0.0 end
if K(R)=="vector4"then return R.w+0.0 end
return 0.0
end
end
return b.finalize(j)]],
["server/Events.lua"]=[[
local a,b=...
local g,j=type,GetHashKey
local k,l,m=math.type,math.tointeger,math.modf
local n=b.defineModule("Events")
local o,q,r=n.methods,n.getters,n.setters
local s,t,u=n.statics,n.staticGetters,n.staticSetters
do
local w=b.events
local x,y,z=CancelEvent,GetCurrentResourceName,GetConvar
local A,B,C,D,E,F,G=g,tostring,tonumber,ipairs,pairs,pcall,error
local function H(I)return I~=nil and B(I)or""end
local function I(J)
local L={}
if A(J)~="table"then return L end
for M=1,#J do L[M]=B(J[M])end
return L
end
local function J(L)
local M,N=false,false
local O={
defer=function()M=true;L.defer()end,
update=function(O)L.update(O)end,
presentCard=function(O,P)L.presentCard(O,P)end,
done=function(O)
N=true
if O==nil then L.done()else L.done(O)end
end,
handover=function(O)L.handover(O)end,
}
return O,function()return M and not N end
end
local L={}
L.onPlayerConnecting=function(M)
w.checkFn("Cfx.onPlayerConnecting",M)
return w.listen("playerConnecting",function(N,O,P)
local Q=w.int(source)or 0
local R,S=J(P)
local U=w.call("Cfx.onPlayerConnecting",M,{
source=Q,name=H(N),player=w.player(Q),deferrals=R,
setKickReason=O,cancel=x,
})
if not U and S()then R.done("The server could not check your connection.")end
end)
end
L.onPlayerJoining=w.on("Cfx.onPlayerJoining","playerJoining",
function(M)return w.player(source),w.int(M)or 0 end)
local M={
"RESOURCE","CLIENT","SERVER","CLIENT_REPLACED","CLIENT_CONNECTION_TIMED_OUT",
"CLIENT_CONNECTION_TIMED_OUT_WITH_PENDING_COMMANDS","SERVER_SHUTDOWN","STATE_BAG_RATE_LIMIT",
"NET_EVENT_RATE_LIMIT","LATENT_NET_EVENT_RATE_LIMIT","COMMAND_RATE_LIMIT","ONE_SYNC_TOO_MANY_MISSED_FRAMES",
"NET_GAME_EVENT_RATE_LIMIT",
}
L.DropReason={}
for N,O in D(M)do L.DropReason[O]=N end
L.onPlayerDropped=w.on("Cfx.onPlayerDropped","playerDropped",
function(N,O,P)
local Q=w.player(source)
if not Q then return nil end
local R=w.int(P)or 0
local S=O~=nil and O~=""and B(O)or nil
return{
player=Q,reason=H(N),code=R,codeName=M[R],
resource=S and S:sub(1,15)~="__cfx_internal:"and S or nil,rawResource=S,
}
end)
L.onPlayerNameChanged=w.on("Cfx.onPlayerNameChanged","onPlayerNameChanged",
function(N,O,P)
local Q=P~=nil and P~=""and B(P)or nil
return w.player(source),H(N),H(O),Q
end)
local function N(O)
O=w.tbl(O)
return w.player(O.player),w.player(O["for"])
end
L.onPlayerEnteredScope=w.on("Cfx.onPlayerEnteredScope","playerEnteredScope",N)
L.onPlayerLeftScope=w.on("Cfx.onPlayerLeftScope","playerLeftScope",N)
L.onPlayerBucketChange=w.on("Cfx.onPlayerBucketChange","onPlayerBucketChange",
function(O,P,Q)return w.player(O),w.int(P)or 0,w.int(Q)or 0 end)
L.onEntityBucketChange=w.on("Cfx.onEntityBucketChange","onEntityBucketChange",
function(O,P,Q)return w.entity(O),w.int(P)or 0,w.int(Q)or 0 end)
L.onEntityCreating=w.on("Cfx.onEntityCreating","entityCreating",
function(O)return w.entity(O),x end)
local function O(P)return w.entity(P)end
L.onEntityCreated=w.on("Cfx.onEntityCreated","entityCreated",O)
L.onServerEntityCreated=w.on("Cfx.onServerEntityCreated","serverEntityCreated",O)
L.onEntityRemoved=w.on("Cfx.onEntityRemoved","entityRemoved",O)
L.onPedHealthChanged=w.on("Cfx.onPedHealthChanged","onPedHealthChanged",
function(P,Q,R,S,U,V,W)
local X=w.entity(P)
if not X then return nil end
return{
ped=X,oldHealth=w.int(Q)or 0,health=w.int(R)or 0,
oldArmour=w.int(S)or 0,armour=w.int(U)or 0,attacker=w.entity(V),
weapon=w.hash(W),
}
end)
L.onPedDeath=w.on("Cfx.onPedDeath","onPedDeath",
function(P,Q,R)return w.entity(P),w.entity(Q),w.hash(R)end)
L.onResourceStarting=w.onResource("Cfx.onResourceStarting","onResourceStarting",true)
L.onResourceStart=w.onResource("Cfx.onResourceStart","onResourceStart")
L.onResourceStop=w.onResource("Cfx.onResourceStop","onResourceStop")
L.onStop=function(P)
w.checkFn("Cfx.onStop",P)
return L.onResourceStop(function()P()end,y())
end
L.onResourceListRefresh=function(P)
w.checkFn("Cfx.onResourceListRefresh",P)
return w.listen("onResourceListRefresh",function()w.call("Cfx.onResourceListRefresh",P)end)
end
s.Cfx=L
local P={}
local function Q(R,S,U)
return function(V)
w.checkFn(R,V)
return w.listen(S,function(W,X)
local Y=w.tbl(X)
local Z,aa=F(U,Y)
if not Z then return w.logError(R,aa)end
if not aa then return end
aa.sender,aa.data,aa.cancel=w.player(W),Y,x
w.call(R,V,aa)
end)
end
end
local R={
"weaponDamageEvent","weaponDamageReply","explosionEvent","fireEvent","startProjectileEvent","ptFxEvent",
"giveWeaponEvent","removeWeaponEvent","removeAllWeaponsEvent","clearPedTasksEvent","givePedScriptedTaskEvent",
"vehicleComponentControlEvent","vehicleComponentControlReply","respawnPlayerPedEvent","respawnPlayerPedReply",
"requestNetworkSyncedSceneEvent","startNetworkSyncedSceneEvent","updateNetworkSyncedSceneEvent",
"stopNetworkSyncedSceneEvent",
}
local function S(U,V,W)
return w.listen(V,function(X,Y)
w.call(U,W,{name=V,sender=w.player(X),data=w.tbl(Y),cancel=x})
end)
end
P.on=function(U,V)
if A(U)~="string"or U==""then G("fx.Events.Game.on: name must be an event name",2)end
w.checkFn("Game.on",V)
return S("Game.on",U,V)
end
P.onAny=function(U)
w.checkFn("Game.onAny",U)
local V={}
for W,X in D(R)do V[W]=S("Game.onAny",X,U)end
return function()
for W,X in D(V)do X()end
end
end
local function U(V)
local W={}
for X,Y in D(w.tbl(V))do
local Z=w.entityOfNetId(Y)
if Z then W[#W+1]=Z end
end
return W
end
P.onWeaponDamage=Q("Game.onWeaponDamage","weaponDamageEvent",function(V)
local W=w.int(V.damageType)or 0
local X=V.hasVehicleData==true
return{
attacker=w.entityOfNetId(V.parentGlobalId),
victim=w.entityOfNetId(V.hitGlobalId),
victims=U(V.hitGlobalIds),
weapon=w.hash(V.weaponType),
damageType=W,
damage=V.overrideDefaultDamage==true and(w.int(V.weaponDamage)or 0)or nil,
damageFlags=w.int(V.damageFlags)or 0,
silenced=V.silenced==true,
willKill=W==3 and V.willKill==true,
component=W>=2 and w.int(V.hitComponent)or nil,
tyreIndex=X and w.int(V.tyreIndex)or nil,
suspensionIndex=X and w.int(V.suspensionIndex)or nil,
localPosition=V.isNetTargetPos==true and w.vec(V.localPosX,V.localPosY,V.localPosZ)or nil,
impactDirection=V.hasImpactDir==true and w.vec(V.impactDirX,V.impactDirY,V.impactDirZ)or nil,
}
end)
P.onExplosion=Q("Game.onExplosion","explosionEvent",function(V)
return{
owner=w.entityOfNetId(V.ownerNetId),
explosionType=w.int(V.explosionType)or 0,
position=w.vec(V.posX,V.posY,V.posZ),
damageScale=C(V.damageScale)or 0.0,
cameraShake=C(V.cameraShake)or 0.0,
audible=V.isAudible==true,
invisible=V.isInvisible==true,
}
end)
P.onFire=Q("Game.onFire","fireEvent",function(V)
local W=V.fires or V[1]
local X={}
for Y,Z in D(w.tbl(W))do
Z=w.tbl(Z)
X[#X+1]={
entity=Z.isEntity==true and w.entityOfNetId(Z.entityGlobalId)or nil,
position=w.vec(Z.posX,Z.posY,Z.posZ),
maxChildren=w.int(Z.maxChildren)or 0,
weapon=w.hash(Z.weaponHash),
fireId=w.int(Z.fireId)or 0,
}
end
return{fires=X}
end)
P.onStartProjectile=Q("Game.onStartProjectile","startProjectileEvent",function(V)
return{
owner=w.entityOfNetId(V.ownerId),
target=w.entityOfNetId(V.targetEntity),
weapon=w.hash(V.weaponHash),
ammo=w.hash(V.projectileHash),
position=w.vec(V.initialPositionX,V.initialPositionY,V.initialPositionZ),
direction=w.vec(V.firePositionX,V.firePositionY,V.firePositionZ),
}
end)
P.onPtFx=Q("Game.onPtFx","ptFxEvent",function(V)
local W=V.isOnEntity==true
return{
effect=w.hash(V.effectHash),
asset=w.hash(V.assetHash),
entity=W and w.entityOfNetId(V.entityNetId)or nil,
position=w.vec(V.posX,V.posY,V.posZ),
offset=w.vec(V.offsetX,V.offsetY,V.offsetZ),
rotation=w.vec(V.rotX,V.rotY,V.rotZ),
scale=C(V.scale)or 1.0,
}
end)
P.onGiveWeapon=Q("Game.onGiveWeapon","giveWeaponEvent",function(V)
return{
ped=w.entityOfNetId(V.pedId),
weapon=w.hash(V.weaponType),
ammo=w.int(V.ammo)or 0,
asPickup=V.givenAsPickup==true,
}
end)
P.onRemoveWeapon=Q("Game.onRemoveWeapon","removeWeaponEvent",function(V)
return{ped=w.entityOfNetId(V.pedId),weapon=w.hash(V.weaponType)}
end)
P.onRemoveAllWeapons=Q("Game.onRemoveAllWeapons","removeAllWeaponsEvent",function(V)
return{ped=w.entityOfNetId(V.pedId)}
end)
P.onClearPedTasks=Q("Game.onClearPedTasks","clearPedTasksEvent",function(V)
return{ped=w.entityOfNetId(V.pedId),immediately=V.immediately==true}
end)
P.onVehicleComponentControl=Q("Game.onVehicleComponentControl","vehicleComponentControlEvent",
function(V)
return{
vehicle=w.entityOfNetId(V.vehicleGlobalId),
ped=w.entityOfNetId(V.pedGlobalId),
component=w.int(V.componentIndex)or 0,
request=V.request==true,
isSeat=V.componentIsSeat==true,
pedInSeat=w.entityOfNetId(V.pedInSeat),
}
end)
P.onRespawnPlayerPed=Q("Game.onRespawnPlayerPed","respawnPlayerPedEvent",function(V)
return{position=w.vec(V.posX,V.posY,V.posZ)}
end)
P.onGivePedScriptedTask=Q("Game.onGivePedScriptedTask","givePedScriptedTaskEvent",function(V)
return{ped=w.entityOfNetId(V.entityNetId),taskId=w.int(V.taskId)or 0}
end)
local V={
requestNetworkSyncedSceneEvent="request",startNetworkSyncedSceneEvent="start",
updateNetworkSyncedSceneEvent="update",stopNetworkSyncedSceneEvent="stop",
}
P.onSyncedScene=function(W)
w.checkFn("Game.onSyncedScene",W)
local X={}
for Y,Z in E(V)do
X[#X+1]=Q("Game.onSyncedScene",Y,function(aa)
local ba=Z=="start"
return{
action=Z,
sceneId=w.int(aa.sceneId)or 0,
rate=(Z=="update"or ba)and(C(aa.rate)or 1.0)or nil,
position=ba and w.vec(aa.scenePosX,aa.scenePosY,aa.scenePosZ)or nil,
attachedTo=ba and aa.hasAttachEntity==true and w.entityOfNetId(aa.attachEntityId)or nil,
looped=ba and aa.isLooped==true or nil,
}
end)(W)
end
return function()
for Y,Z in D(X)do Z()end
end
end
s.Game=P
local function W(X,Y)
local Z="TxAdmin.on"..X:sub(1,1):upper()..X:sub(2)
return w.on(Z,"txAdmin:events:"..X,function(aa)return Y(w.tbl(aa))end)
end
local X={}
X.enabled=z("txAdminServerMode","false")=="true"
local Y=z("txAdmin-version","")
X.version=Y~=""and Y or nil
X.onAnnouncement=W("announcement",function(Z)
return{author=H(Z.author),message=H(Z.message)}
end)
X.onServerShuttingDown=W("serverShuttingDown",function(Z)
return{delay=C(Z.delay)or 0,author=H(Z.author),message=H(Z.message)}
end)
X.onScheduledRestart=W("scheduledRestart",function(Z)
return{secondsRemaining=C(Z.secondsRemaining)or 0,translatedMessage=H(Z.translatedMessage)}
end)
X.onScheduledRestartSkipped=W("scheduledRestartSkipped",function(Z)
return{secondsRemaining=C(Z.secondsRemaining)or 0,temporary=Z.temporary==true,author=w.str(Z.author)}
end)
X.onPlayerBanned=W("playerBanned",function(Z)
local aa=C(Z.expiration)
return{
author=H(Z.author),reason=H(Z.reason),actionId=H(Z.actionId),
expiration=aa,permanent=aa==nil,durationInput=H(Z.durationInput),
durationTranslated=w.str(Z.durationTranslated),player=w.player(Z.targetNetId),targetNetId=C(Z.targetNetId),
targetIds=I(Z.targetIds),targetHwids=I(Z.targetHwids),targetName=H(Z.targetName),
kickMessage=H(Z.kickMessage),
}
end)
X.onPlayerWarned=W("playerWarned",function(Z)
return{
author=H(Z.author),reason=H(Z.reason),actionId=H(Z.actionId),
player=w.player(Z.targetNetId),targetNetId=C(Z.targetNetId),targetIds=I(Z.targetIds),
targetName=H(Z.targetName),
}
end)
X.onPlayerKicked=W("playerKicked",function(Z)
local aa=C(Z.target)or 0
return{
target=aa,everyone=aa==-1,player=w.player(aa),author=H(Z.author),
reason=H(Z.reason),dropMessage=H(Z.dropMessage),
}
end)
X.onPlayerDirectMessage=W("playerDirectMessage",function(Z)
return{target=C(Z.target)or 0,player=w.player(Z.target),author=H(Z.author),
message=H(Z.message)}
end)
X.onPlayerHealed=W("playerHealed",function(Z)
local aa=C(Z.target)or 0
return{target=aa,everyone=aa==-1,player=w.player(aa),author=H(Z.author)}
end)
X.onActionRevoked=W("actionRevoked",function(Z)
return{
actionId=H(Z.actionId),actionType=Z.actionType=="warn"and"warn"or"ban",
actionReason=H(Z.actionReason),actionAuthor=H(Z.actionAuthor),
playerName=Z.playerName~=false and w.str(Z.playerName)or nil,playerIds=I(Z.playerIds),
playerHwids=I(Z.playerHwids),revokedBy=H(Z.revokedBy),
}
end)
X.onWhitelistPlayer=W("whitelistPlayer",function(Z)
return{action=Z.action=="removed"and"removed"or"added",license=H(Z.license),
playerName=H(Z.playerName),adminName=H(Z.adminName)}
end)
X.onWhitelistPreApproval=W("whitelistPreApproval",function(Z)
return{action=Z.action=="removed"and"removed"or"added",identifier=H(Z.identifier),
playerName=w.str(Z.playerName),adminName=H(Z.adminName)}
end)
X.onWhitelistRequest=W("whitelistRequest",function(Z)
return{action=H(Z.action),playerName=w.str(Z.playerName),requestId=w.str(Z.requestId),
license=w.str(Z.license),adminName=w.str(Z.adminName)}
end)
X.onAdminAuth=W("adminAuth",function(Z)
local aa=C(Z.netid)or-1
return{netId=aa,everyone=aa==-1,player=w.player(aa),isAdmin=Z.isAdmin==true,username=w.str(Z.username)}
end)
X.onAdminsUpdated=function(Z)
w.checkFn("TxAdmin.onAdminsUpdated",Z)
return w.listen("txAdmin:events:adminsUpdated",function(aa)
local ba,ca={},{}
for da,ea in D(w.tbl(aa))do
local fa=w.int(ea)
if fa then
ba[#ba+1]=fa
local ga=w.player(fa)
if ga then ca[#ca+1]=ga end
end
end
w.call("TxAdmin.onAdminsUpdated",Z,ca,ba)
end)
end
X.onConfigChanged=function(Z)
w.checkFn("TxAdmin.onConfigChanged",Z)
return w.listen("txAdmin:events:configChanged",function()w.call("TxAdmin.onConfigChanged",Z)end)
end
X.onConsoleCommand=W("consoleCommand",function(Z)
return{author=H(Z.author),channel=B(Z.channel or"txAdmin"),command=H(Z.command)}
end)
s.TxAdmin=X
end
return b.finalizeModule(n)]],
["server/Global.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineModule("Global")
local i,j,k=h.methods,h.getters,h.setters
local l,m,n=h.statics,h.staticGetters,h.staticSetters
do
local o=b.states.global()
m.states=function()return o end
m.state=m.states
end
return b.finalizeModule(h)]],
["server/Http.lua"]=[[
local a,b=...
local d,e=type,GetHashKey
local f,g,h=math.type,math.tointeger,math.modf
local j=b.defineModule("Http")
local l,m,n=j.methods,j.getters,j.setters
local q,r,t=j.statics,j.staticGetters,j.staticSetters
do
local u=PerformHttpRequest
local w,x,y,z,A,B,C,D,E,F=
d,error,tostring,pairs,ipairs,pcall,setmetatable,string.format,string.gsub,string.find
local G,H=table.concat,table.sort
local I=json
local J={}
J.__index=J
J.__name="fx.HttpResponse"
J.__tostring=function(K)return"fx.HttpResponse("..y(K.status)..")"end
function J:json()
if self.body==nil or self.body==""then return nil,"no body"end
local L,M=B(I.decode,self.body)
if not L then return nil,y(M)end
return M,nil
end
local function K(L)
return(E(L,"[^%w%-%._~]",function(M)return D("%%%02X",M:byte())end))
end
local function L(M,N)
local O={}
for P in z(N)do O[#O+1]=y(P)end
H(O)
local P={}
for Q,R in A(O)do P[Q]=K(R).."="..K(y(N[R]))end
if#P==0 then return M end
return M..(M:find("?",1,true)and"&"or"?")..G(P,"&")
end
local M={GET=true,POST=true,PUT=true,PATCH=true,DELETE=true,HEAD=true,OPTIONS=true}
local function N(O,P,Q)
if w(P)~="string"or P==""then x(O..": url must be a non-empty string",3)end
if Q~=nil and w(Q)~="table"then x(O..": options must be a table",3)end
local R=Q or{}
local S=R.method or"GET"
if not M[S]then x(O..": unknown method '"..y(S).."'",3)end
if R.body~=nil and R.json~=nil then x(O..": give options.body or options.json, not both",3)end
if R.body~=nil and w(R.body)~="string"then x(O..": options.body must be a string",3)end
if R.body~=nil and F(R.body,"\0",1,true)then
x(O..": options.body holds a NUL byte, and FiveM sends the body only up to the first one: encode binary data (base64)",3)
end
local U={}
local V=false
for W,X in z(R.headers or{})do
U[W]=y(X)
if w(W)=="string"and W:lower()=="content-type"then V=true end
end
local W=R.body
if R.json~=nil then
W=I.encode(R.json)
if not V then U["Content-Type"]="application/json"end
end
if R.query~=nil then P=L(P,R.query)end
local X=a.Promise.new()
u(P,function(Y,Z,_,aa)
if Y==0 then
X:reject(O..": no response from "..P..(aa and(" ("..y(aa)..")")or""))
return
end
X:resolve(C({
status=Y,ok=Y>=200 and Y<300,body=Z,headers=_ or{},
error=(Y<200 or Y>=300)and aa or nil,
},J))
end,S,W or"",U,{followLocation=R.followRedirects~=false})
if R.timeoutMs~=nil then return a.Promise.timeout(X,R.timeoutMs,O..": timed out ("..P..")")end
return X
end
q.requestAsync=function(O,P)
return N("Http.requestAsync",O,P)
end
local function O(P,Q,R)
if Q~=nil and w(Q)~="table"then x(P..": options must be a table",3)end
local S={}
for U,V in z(Q or{})do S[U]=V end
S.method=R
return S
end
q.getAsync=function(P,Q)
return N("Http.getAsync",P,O("Http.getAsync",Q,"GET"))
end
q.postAsync=function(P,Q,R)
local S=O("Http.postAsync",R,"POST")
if w(Q)=="table"then S.json=Q
elseif w(Q)=="string"then S.body=Q
elseif Q~=nil then x("Http.postAsync: body must be a table or a string",2)end
return N("Http.postAsync",P,S)
end
end
return b.finalizeModule(j)]],
["server/Kvp.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineModule("Kvp")
local i,j,k=h.methods,h.getters,h.setters
local l,m,n=h.statics,h.staticGetters,h.staticSetters
do
local o,p,q=
GetResourceKvpString,GetResourceKvpInt,GetResourceKvpFloat
local r,s,t=SetResourceKvp,SetResourceKvpInt,SetResourceKvpFloat
local u,v,w=
SetResourceKvpNoSync,SetResourceKvpIntNoSync,SetResourceKvpFloatNoSync
local x,y=DeleteResourceKvp,DeleteResourceKvpNoSync
local z,A,B=StartFindKvp,FindKvp,EndFindKvp
local C,D,E,F,G=c,error,pcall,tostring,math.type
local H=json
local function I(J,K)
if C(K)~="string"or K==""then D("Kvp."..J..": key must be a non-empty string",3)end
end
l.get=function(J)
I("get",J)
return o(J)
end
l.getInt=function(J)
I("getInt",J)
return p(J)or 0
end
l.getFloat=function(J)
I("getFloat",J)
return q(J)or 0.0
end
l.getJson=function(J)
I("getJson",J)
local K=o(J)
if K==nil then return nil end
local L,M=E(H.decode,K)
if not L or M==nil then return nil,("Kvp.getJson: '%s' is not valid JSON"):format(J)end
return M
end
l.set=function(J,K,L)
I("set",J)
if C(K)~="string"then D("Kvp.set: value must be a string (setInt, setFloat, setJson for the others)",2)end
if L then u(J,K)else r(J,K)end
end
l.setInt=function(J,K,L)
I("setInt",J)
if G(K)~="integer"then D("Kvp.setInt: value must be an integer, got "..F(K),2)end
if L then v(J,K)else s(J,K)end
end
l.setFloat=function(J,K,L)
I("setFloat",J)
if C(K)~="number"then D("Kvp.setFloat: value must be a number, got "..F(K),2)end
K=K+0.0
if L then w(J,K)else t(J,K)end
end
l.setJson=function(J,K,L)
I("setJson",J)
local M=H.encode(K)
if L then u(J,M)else r(J,M)end
end
l.delete=function(J,K)
I("delete",J)
if K then y(J)else x(J)end
end
l.keys=function(J)
if J~=nil and C(J)~="string"then D("Kvp.keys: prefix must be a string",2)end
local K={}
local L=z(J or"")
if L==nil or L==-1 then return K end
while true do
local M=A(L)
if M==nil then break end
K[#K+1]=M
end
B(L)
return K
end
if b.isServer then
local J=FlushResourceKvp
l.flush=function()J()end
end
end
return b.finalizeModule(h)]],
["server/Model.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineType("Model",{kind="value"})
local i,j,k=h.methods,h.getters,h.setters
local l,n,p=h.statics,h.staticGetters,h.staticSetters
do
local q=d
local r,s=setmetatable,c
local u,v=h.cache,h.mt
h.wrap=function(w)
if w==nil then return nil end
local x=s(w)
if x=="table"then return w end
if x=="string"then w=q(w)end
local y=u[w]
if y~=nil then return y end
y=r({handle=w},v)
u[w]=y
return y
end
h.tostring=function(w)return("Model(%d)"):format(w.handle)end
j.hash=function(w)return w.handle end
end
return b.finalize(h)]],
["server/Mumble.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineModule("Mumble")
local i,j,k=h.methods,h.getters,h.setters
local l,m,n=h.statics,h.staticGetters,h.staticSetters
do
local o=MumbleCreateChannel
l.createChannel=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p)
end
end
do
local o=MumbleIsPlayerMuted
l.isPlayerMuted=function(p)
if e(p)=="float"then p=f((g(p)))or 0 end
local q=o(p)
return(q~=false and q~=0 and q~=nil)
end
end
do
local o=MumbleSetPlayerMuted
l.setPlayerMuted=function(p,q)
if e(p)=="float"then p=f((g(p)))or 0 end
return o(p,q)
end
end
return b.finalizeModule(h)]],
["server/Object.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local i=b.defineType("Object",{kind="entity",parent="Entity",entityType=3})
local j,k,l=i.methods,i.getters,i.setters
local m,n,p=i.statics,i.staticGetters,i.staticSetters
local q=b.lazyWrap("Object")
do
local r=CreateObject
m.createRpc=function(s,t,u,v,w)
local A=c(s)
if A=="string"then s=d(s)elseif A=="table"then s=s.handle end
local B=r(s,t.x,t.y,t.z,u,v,w)
return q(B)
end
end
do
local r,s=CreateObjectNoOffset,SetEntityHeading
m.createRaw=function(t,u,v,w)
local A=b.hash(t)
local B=r(A,u.x,u.y,u.z,true,true,w and w.doorFlag or false)
local C=i.wrap(B)
if C then
local D=b.heading(u,v)
if D~=0.0 then s(B,D)end
b.applyServerOptions(C,w)
end
return C
end
m.createAsync=b.makeCreate("Object.createAsync",m.createRaw)
end
return b.finalize(i)]],
["server/Ped.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local i=b.defineType("Ped",{kind="entity",parent="Entity",entityType=1})
local j,k,l=i.methods,i.getters,i.setters
local m,n,o=i.statics,i.staticGetters,i.staticSetters
local q=b.lazyWrap("Entity")
local r=b.lazyWrap("Vehicle")
do
local s=AddPedDecorationFromHashes
j.addDecorationFromHashes=function(t,u,v)
local w=c(u)
if w=="string"then u=d(u)elseif w=="table"then u=u.handle end
local A=c(v)
if A=="string"then v=d(v)elseif A=="table"then v=v.handle end
s(t.handle,u,v)
return t
end
end
do
local s=GetPedArmour
k.armour=function(t)
return s(t.handle)
end
end
do
local s=SetPedArmour
l.armour=function(t,u)
if e(u)=="float"then u=f((g(u)))or 0 end
s(t.handle,u)
end
end
do
local s=GetPedCauseOfDeath
k.causeOfDeath=function(t)
return s(t.handle)
end
end
do
local s=ClearPedProp
j.clearProp=function(t,u)
if e(u)=="float"then u=f((g(u)))or 0 end
s(t.handle,u)
return t
end
end
do
local s=ClearPedSecondaryTask
j.clearSecondaryTask=function(t)
s(t.handle)
return t
end
end
do
local s=ClearPedTasks
j.clearTasks=function(t)
s(t.handle)
return t
end
end
do
local s=ClearPedTasksImmediately
j.clearTasksImmediately=function(t)
s(t.handle)
return t
end
end
do
local s=GetCurrentPedWeapon
k.currentWeapon=function(t)
return s(t.handle)
end
end
do
local s=GetPedDesiredHeading
k.desiredHeading=function(t)
return s(t.handle)
end
end
do
local s=GetPedSpecificTaskType
j.getSpecificTaskType=function(t,u)
if e(u)=="float"then u=f((g(u)))or 0 end
return s(t.handle,u)
end
end
do
local s=GiveWeaponToPed
j.giveWeapon=function(t,u,v,w,A)
local B=c(u)
if B=="string"then u=d(u)elseif B=="table"then u=u.handle end
if e(v)=="float"then v=f((g(v)))or 0 end
s(t.handle,u,v,w,A)
return t
end
end
do
local s=GiveWeaponComponentToPed
j.giveWeaponComponent=function(t,u,v)
local w=c(u)
if w=="string"then u=d(u)elseif w=="table"then u=u.handle end
local A=c(v)
if A=="string"then v=d(v)elseif A=="table"then v=v.handle end
s(t.handle,u,v)
return t
end
end
do
local s=IsPedAPlayer
k.isAPlayer=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=IsFlashLightOn
k.isFlashLightOn=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=IsPedHandcuffed
k.isHandcuffed=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=IsPedInAnyVehicle
k.isInAnyVehicle=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=IsPedInVehicle
j.isInVehicle=function(t,u)
if c(u)=="table"then u=u.handle end
local v=s(t.handle,u)
return(v~=false and v~=0 and v~=nil)
end
end
do
local s=IsPedRagdoll
k.isRagdoll=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=IsPedStrafing
k.isStrafing=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=IsPedUsingActionMode
k.isUsingActionMode=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=GetVehiclePedIsIn
k.lastVehicle=function(t)
local u=s(t.handle,true)
return r(u)
end
end
do
local s=GetPedMaxHealth
k.maxHealth=function(t)
return s(t.handle)
end
end
do
local s=GetPedRelationshipGroupHash
k.relationshipGroupHash=function(t)
return s(t.handle)
end
end
do
local s=RemoveAllPedWeapons
j.removeAllWeapons=function(t,u)
s(t.handle,u)
return t
end
end
do
local s=RemoveWeaponFromPed
j.removeWeapon=function(t,u)
local v=c(u)
if v=="string"then u=d(u)elseif v=="table"then u=u.handle end
s(t.handle,u)
return t
end
end
do
local s=RemoveWeaponComponentFromPed
j.removeWeaponComponent=function(t,u,v)
local w=c(u)
if w=="string"then u=d(u)elseif w=="table"then u=u.handle end
local A=c(v)
if A=="string"then v=d(v)elseif A=="table"then v=v.handle end
s(t.handle,u,v)
return t
end
end
do
local s=GetPedScriptTaskCommand
k.scriptTaskCommand=function(t)
return s(t.handle)
end
end
do
local s=GetPedScriptTaskStage
k.scriptTaskStage=function(t)
return s(t.handle)
end
end
do
local s=GetSeatPedIsUsing
k.seatIsUsing=function(t)
return s(t.handle)
end
end
do
local s=GetSelectedPedWeapon
k.selectedWeapon=function(t)
return s(t.handle)
end
end
do
local s=SetPedAmmo
j.setAmmo=function(t,u,v)
local w=c(u)
if w=="string"then u=d(u)elseif w=="table"then u=u.handle end
if e(v)=="float"then v=f((g(v)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=SetPedCanRagdoll
j.setCanRagdoll=function(t,u)
s(t.handle,u)
return t
end
end
do
local s=SetPedComponentVariation
j.setComponentVariation=function(t,u,v,w,A)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
if e(A)=="float"then A=f((g(A)))or 0 end
s(t.handle,u,v,w,A)
return t
end
end
do
local s=SetPedConfigFlag
j.setConfigFlag=function(t,u,v)
if e(u)=="float"then u=f((g(u)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=SetCurrentPedWeapon
j.setCurrentWeapon=function(t,u,v)
local w=c(u)
if w=="string"then u=d(u)elseif w=="table"then u=u.handle end
s(t.handle,u,v)
return t
end
end
do
local s=SetPedDefaultComponentVariation
j.setDefaultComponentVariation=function(t)
s(t.handle)
return t
end
end
do
local s=SetPedEyeColor
j.setEyeColor=function(t,u)
if e(u)=="float"then u=f((g(u)))or 0 end
s(t.handle,u)
return t
end
end
do
local s=SetPedFaceFeature
j.setFaceFeature=function(t,u,v)
if e(u)=="float"then u=f((g(u)))or 0 end
v=(v or 0)+0.0
s(t.handle,u,v)
return t
end
end
do
local s=SetPedHairTint
j.setHairTint=function(t,u,v)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=SetPedHeadBlendData
j.setHeadBlendData=function(t,u,v,w,A,B,C,D,E,F,G)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
if e(A)=="float"then A=f((g(A)))or 0 end
if e(B)=="float"then B=f((g(B)))or 0 end
if e(C)=="float"then C=f((g(C)))or 0 end
D=(D or 0)+0.0
E=(E or 0)+0.0
F=(F or 0)+0.0
s(t.handle,u,v,w,A,B,C,D,E,F,G)
return t
end
end
do
local s=SetPedHeadOverlay
j.setHeadOverlay=function(t,u,v,w)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
w=(w or 0)+0.0
s(t.handle,u,v,w)
return t
end
end
do
local s=SetPedHeadOverlayColor
j.setHeadOverlayColor=function(t,u,v,w,A)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
if e(A)=="float"then A=f((g(A)))or 0 end
s(t.handle,u,v,w,A)
return t
end
end
do
local s=SetPedIntoVehicle
j.setIntoVehicle=function(t,u,v)
if c(u)=="table"then u=u.handle end
if e(v)=="float"then v=f((g(v)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=SetPedPropIndex
j.setPropIndex=function(t,u,v,w,A)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
s(t.handle,u,v,w,A)
return t
end
end
do
local s=SetPedRandomComponentVariation
j.setRandomComponentVariation=function(t,u)
if e(u)=="float"then u=f((g(u)))or 0 end
s(t.handle,u)
return t
end
end
do
local s=SetPedRandomProps
j.setRandomProps=function(t)
s(t.handle)
return t
end
end
do
local s=SetPedResetFlag
j.setResetFlag=function(t,u,v)
if e(u)=="float"then u=f((g(u)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=SetPedToRagdoll
j.setToRagdoll=function(t,u,v,w,A,B,C)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
s(t.handle,u,v,w,A,B,C)
return t
end
end
do
local s=SetPedToRagdollWithFall
j.setToRagdollWithFall=function(t,u,v,w,A,B,C,D)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
B=(B or 0)+0.0
s(t.handle,u,v,w,A.x,A.y,A.z,B,C.x,C.y,C.z,D.x,D.y,D.z)
return t
end
end
do
local s=GetPedSourceOfDamage
k.sourceOfDamage=function(t)
local u=s(t.handle)
return q(u)
end
end
do
local s=GetPedSourceOfDeath
k.sourceOfDeath=function(t)
local u=s(t.handle)
return q(u)
end
end
do
local s=GetPedStealthMovement
k.stealthMovement=function(t)
local u=s(t.handle)
return(u~=false and u~=0 and u~=nil)
end
end
do
local s=TaskCombatPed
j.taskCombat=function(t,u,v,w)
if c(u)=="table"then u=u.handle end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
s(t.handle,u,v,w)
return t
end
end
do
local s=TaskDriveBy
j.taskDriveBy=function(t,u,v,w,A,B,C,D)
if c(u)=="table"then u=u.handle end
if c(v)=="table"then v=v.handle end
A=(A or 0)+0.0
if e(B)=="float"then B=f((g(B)))or 0 end
local E=c(D)
if E=="string"then D=d(D)elseif E=="table"then D=D.handle end
s(t.handle,u,v,w.x,w.y,w.z,A,B,C,D)
return t
end
end
do
local s=TaskEnterVehicle
j.taskEnterVehicle=function(t,u,v,w,A,B,C)
if c(u)=="table"then u=u.handle end
if e(v)=="float"then v=f((g(v)))or 0 end
if e(w)=="float"then w=f((g(w)))or 0 end
A=(A or 0)+0.0
if e(B)=="float"then B=f((g(B)))or 0 end
s(t.handle,u,v,w,A,B,C)
return t
end
end
do
local s=TaskGoStraightToCoord
j.taskGoStraightToCoord=function(t,u,v,w,A,B)
v=(v or 0)+0.0
if e(w)=="float"then w=f((g(w)))or 0 end
A=(A or 0)+0.0
B=(B or 0)+0.0
s(t.handle,u.x,u.y,u.z,v,w,A,B)
return t
end
end
do
local s=TaskGoToCoordAnyMeans
j.taskGoToCoordAnyMeans=function(t,u,v,w,A,B,C)
v=(v or 0)+0.0
if c(w)=="table"then w=w.handle end
if e(B)=="float"then B=f((g(B)))or 0 end
C=(C or 0)+0.0
s(t.handle,u.x,u.y,u.z,v,w,A,B,C)
return t
end
end
do
local s=TaskHandsUp
j.taskHandsUp=function(t,u,v,w,A)
if e(u)=="float"then u=f((g(u)))or 0 end
if c(v)=="table"then v=v.handle end
if e(w)=="float"then w=f((g(w)))or 0 end
s(t.handle,u,v,w,A)
return t
end
end
do
local s=TaskLeaveAnyVehicle
j.taskLeaveAnyVehicle=function(t,u,v)
if e(u)=="float"then u=f((g(u)))or 0 end
if e(v)=="float"then v=f((g(v)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=TaskLeaveVehicle
j.taskLeaveVehicle=function(t,u,v)
if c(u)=="table"then u=u.handle end
if e(v)=="float"then v=f((g(v)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=TaskPlayAnim
j.taskPlayAnim=function(t,u,v,w,A,B,C,D,E,F,G)
w=(w or 0)+0.0
A=(A or 0)+0.0
if e(B)=="float"then B=f((g(B)))or 0 end
if e(C)=="float"then C=f((g(C)))or 0 end
D=(D or 0)+0.0
s(t.handle,u,v,w,A,B,C,D,E,F,G)
return t
end
end
do
local s=TaskPlayAnimAdvanced
j.taskPlayAnimAdvanced=function(t,u,v,w,A,B,C,D,E,F,G,H)
B=(B or 0)+0.0
C=(C or 0)+0.0
if e(D)=="float"then D=f((g(D)))or 0 end
F=(F or 0)+0.0
s(t.handle,u,v,w.x,w.y,w.z,A.x,A.y,A.z,B,C,D,E,F,G,H)
return t
end
end
do
local s=TaskReactAndFleePed
j.taskReactAndFlee=function(t,u)
if c(u)=="table"then u=u.handle end
s(t.handle,u)
return t
end
end
do
local s=TaskShootAtCoord
j.taskShootAtCoord=function(t,u,v,w)
if e(v)=="float"then v=f((g(v)))or 0 end
local A=c(w)
if A=="string"then w=d(w)elseif A=="table"then w=w.handle end
s(t.handle,u.x,u.y,u.z,v,w)
return t
end
end
do
local s=TaskWarpPedIntoVehicle
j.taskWarpIntoVehicle=function(t,u,v)
if c(u)=="table"then u=u.handle end
if e(v)=="float"then v=f((g(v)))or 0 end
s(t.handle,u,v)
return t
end
end
do
local s=GetVehiclePedIsIn
k.vehicle=function(t)
local u=s(t.handle,false)
return r(u)
end
end
do
local s=CreatePed
m.createRaw=function(t,u,v,w)
local A=b.hash(t)
local B=s(w and w.pedType or 4,A,u.x,u.y,u.z,
b.heading(u,v),true,true)
local C=i.wrap(B)
if C then b.applyServerOptions(C,w)end
return C
end
m.createAsync=b.makeCreate("Ped.createAsync",m.createRaw)
end
return b.finalize(i)]],
["server/Player.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local e,f,g=math.type,math.tointeger,math.modf
local h=b.defineType("Player",{kind="player"})
local j,k,l=h.methods,h.getters,h.setters
local m,n,q=h.statics,h.staticGetters,h.staticSetters
do
local t=GetAirDragMultiplierForPlayersVehicle
k.airDragMultiplierForPlayersVehicle=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerCameraRotation
k.cameraRotation=function(u)
return t(u.handle)
end
end
do
local t=CanPlayerStartCommerceSession
k.canStartCommerceSession=function(u)
local v=t(u.handle)
return(v~=false and v~=0 and v~=nil)
end
end
do
local t=ClearPlayerWantedLevel
j.clearWantedLevel=function(u)
t(u.handle)
return u
end
end
do
local t=DoesPlayerOwnSku
j.doesOwnSku=function(u,v)
if e(v)=="float"then v=f((g(v)))or 0 end
local w=t(u.handle,v)
return(w~=false and w~=0 and w~=nil)
end
end
do
local t=DoesPlayerOwnSkuExt
j.doesOwnSkuExt=function(u,v)
if e(v)=="float"then v=f((g(v)))or 0 end
local w=t(u.handle,v)
return(w~=false and w~=0 and w~=nil)
end
end
do
local t=DropPlayer
j.drop=function(u,v)
t(u.handle,v)
return u
end
end
do
local t=GetPlayerEndpoint
k.endpoint=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerFakeWantedLevel
k.fakeWantedLevel=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerFocusPos
k.focusPos=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerIdentifier
j.getIdentifier=function(u,v)
if e(v)=="float"then v=f((g(v)))or 0 end
return t(u.handle,v)
end
end
do
local t=GetPlayerIdentifierByType
j.getIdentifierByType=function(u,v)
return t(u.handle,v)
end
end
do
local t=GetPlayerPeerStatistics
j.getPeerStatistics=function(u,v)
if e(v)=="float"then v=f((g(v)))or 0 end
return t(u.handle,v)
end
end
do
local t=GetPlayerTimeInPursuit
j.getTimeInPursuit=function(u,v)
return t(u.handle,v)
end
end
do
local t=GetPlayerToken
j.getToken=function(u,v)
if e(v)=="float"then v=f((g(v)))or 0 end
return t(u.handle,v)
end
end
do
local t=GetPlayerGuid
k.guid=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerInvincible
k.invincible=function(u)
local v=t(u.handle)
return(v~=false and v~=0 and v~=nil)
end
end
do
local t=SetPlayerInvincible
l.invincible=function(u,v)
t(u.handle,v)
end
end
do
local t=IsPlayerAceAllowed
j.isAceAllowed=function(u,v)
local w=t(u.handle,v)
return(w~=false and w~=0 and w~=nil)
end
end
do
local t=IsPlayerCommerceInfoLoaded
k.isCommerceInfoLoaded=function(u)
local v=t(u.handle)
return(v~=false and v~=0 and v~=nil)
end
end
do
local t=IsPlayerCommerceInfoLoadedExt
k.isCommerceInfoLoadedExt=function(u)
local v=t(u.handle)
return(v~=false and v~=0 and v~=nil)
end
end
do
local t=IsPlayerEvadingWantedLevel
k.isEvadingWantedLevel=function(u)
local v=t(u.handle)
return(v~=false and v~=0 and v~=nil)
end
end
do
local t=IsPlayerInFreeCamMode
k.isInFreeCamMode=function(u)
local v=t(u.handle)
return(v~=false and v~=0 and v~=nil)
end
end
do
local t=IsPlayerUsingSuperJump
k.isUsingSuperJump=function(u)
local v=t(u.handle)
return(v~=false and v~=0 and v~=nil)
end
end
do
local t=GetPlayerLastMsg
k.lastMsg=function(u)
return t(u.handle)
end
end
do
local t=LoadPlayerCommerceData
j.loadCommerceData=function(u)
t(u.handle)
return u
end
end
do
local t=LoadPlayerCommerceDataExt
j.loadCommerceDataExt=function(u)
t(u.handle)
return u
end
end
do
local t=GetPlayerMaxArmour
k.maxArmour=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerMaxHealth
k.maxHealth=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerMeleeWeaponDamageModifier
k.meleeWeaponDamageModifier=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerName
k.name=function(u)
return t(u.handle)
end
end
do
local t=GetNumPlayerIdentifiers
k.numIdentifiers=function(u)
return t(u.handle)
end
end
do
local t=GetNumPlayerTokens
k.numTokens=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerPing
k.ping=function(u)
return t(u.handle)
end
end
do
local t=RequestPlayerCommerceSession
j.requestCommerceSession=function(u,v)
if e(v)=="float"then v=f((g(v)))or 0 end
t(u.handle,v)
return u
end
end
do
local t=GetPlayerRoutingBucket
k.routingBucket=function(u)
return t(u.handle)
end
end
do
local t=SetPlayerRoutingBucket
l.routingBucket=function(u,v)
if e(v)=="float"then v=f((g(v)))or 0 end
t(u.handle,v)
end
end
do
local t=SetPlayerControl
j.setControl=function(u,v,w)
if e(w)=="float"then w=f((g(w)))or 0 end
t(u.handle,v,w)
return u
end
end
do
local t=SetPlayerCullingRadius
j.setCullingRadius=function(u,v)
v=(v or 0)+0.0
t(u.handle,v)
return u
end
end
do
local t=SetPlayerModel
j.setModel=function(u,v)
local w=c(v)
if w=="string"then v=d(v)elseif w=="table"then v=v.handle end
t(u.handle,v)
return u
end
end
do
local t=SetPlayerWantedLevel
j.setWantedLevel=function(u,v,w)
if e(v)=="float"then v=f((g(v)))or 0 end
t(u.handle,v,w)
return u
end
end
do
local t=GetPlayerTeam
k.team=function(u)
return t(u.handle)
end
end
do
local t=TempBanPlayer
j.tempBan=function(u,v)
t(u.handle,v)
return u
end
end
do
local t=GetPlayerTimeOnline
k.timeOnline=function(u)
return t(u.handle)
end
end
do
local t=NetworkGetVoiceProximityOverrideForPlayer
k.voiceProximityOverride=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerWantedCentrePosition
k.wantedCentrePosition=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerWantedLevel
k.wantedLevel=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerWeaponDamageModifier
k.weaponDamageModifier=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerWeaponDefenseModifier
k.weaponDefenseModifier=function(u)
return t(u.handle)
end
end
do
local t=GetPlayerWeaponDefenseModifier_2
k.weaponDefenseModifier2=function(u)
return t(u.handle)
end
end
do
local t,u=DoesPlayerExist,GetPlayerPed
local v,w,x,y=setmetatable,tonumber,tostring,c
local z=b.lazyWrap("Entity")
local A,B=h.cache,h.mt
h.wrap=function(C)
if y(C)=="table"then return C end
C=w(C)
if not C or not t(C)then return nil end
local D=A[C]
if D~=nil then return D end
D=v({handle=C},B)
A[C]=D
return D
end
h.tostring=function(C)return("Player(%s)"):format(x(C.handle))end
h.decode=function(C)
if not C then return nil end
local D=A[C]
if D~=nil then return D end
D=v({handle=C},B)
A[C]=D
return D
end
local C,D=GetNumPlayerIndices,GetPlayerFromIndex
m.all=function()
local E={}
for F=0,C()-1 do
local G=h.wrap(D(F))
if G then E[#E+1]=G end
end
return E
end
k.serverId=function(E)return E.handle end
k.exists=function(E)
local F=t(E.handle)
return F~=false and F~=0 and F~=nil
end
k.ped=function(E)return z(u(E.handle))end
local E,F=GetNumPlayerIdentifiers,GetPlayerIdentifier
local G,H=GetNumPlayerTokens,GetPlayerToken
k.identifiers=function(I)
local J,K=x(I.handle),{}
for L=0,(E(J)or 0)-1 do
local M=F(J,L)
local N=M and M:match("^([^:]+):")
if N and K[N]==nil then K[N]=M end
end
return K
end
k.tokens=function(I)
local J,K=x(I.handle),{}
for L=0,(G(J)or 0)-1 do
local M=H(J,L)
if M then K[#K+1]=M end
end
return K
end
local I=v({},{__mode="k"})
k.states=function(J)
local K=I[J]
if K==nil then
K=b.states.player(J.handle,false)
I[J]=K
end
return K
end
k.state=k.states
end
return b.finalize(h)]],
["server/Resource.lua"]=[[
local d,e=...
local h,j=type,GetHashKey
local l,m,o=math.type,math.tointeger,math.modf
local p=e.defineModule("Resource")
local q,r,t=p.methods,p.getters,p.setters
local u,w,x=p.statics,p.staticGetters,p.staticSetters
do
local y,z,A,B=ipairs,table.unpack,exports,math.max
local C,D,E=GetResourceState,AddEventHandler,Citizen.CreateThread
local F,G=Citizen.Wait,GetGameTimer
local H,I=GetNumResourceMetadata,GetResourceMetadata
local J,K=LoadResourceFile,GetResourceCommands
local L,M=GetNumResources,GetResourceByFindIndex
local N,O=GetCurrentResourceName,GetInvokingResource
local P,Q,R,S,U,V,W=h,tostring,tonumber,error,pcall,setmetatable,table.remove
local X=json
local Y=d.Logger("fx"):child("Resource")
local Z={}
local aa={}
local function ba(ca)
if ca:sub(-3)=="ies"then return{ca,ca:sub(1,-4).."y",ca:sub(1,-2)}end
if ca:sub(-1)=="s"then return{ca,ca:sub(1,-2)}end
if ca:sub(-1)=="y"then return{ca,ca:sub(1,-2).."ies",ca:sub(1,-2).."ie"}end
return{ca,ca.."s"}
end
local function ca(da,ea)
local fa={}
for ga,ha in y(ba(ea))do
for ia=0,(H(da,ha)or 0)-1 do
local ja=I(da,ha,ia)
if ja~=nil then fa[#fa+1]=ja end
end
end
return fa
end
local function da(ea,fa,ga)
if P(ga)~="string"or ga==""then S(Q(ea)..":"..fa..": key must be a non-empty string",3)end
end
local function ea(fa)
local ga=fa:gsub("^v",""):match("^[^-+]*")
local ha={}
for ia in ga:gmatch("%d+")do ha[#ha+1]=R(ia)end
return#ha>0 and ha or nil
end
local fa={
state=function(fa)return C(fa.name)end,
started=function(fa)return C(fa.name)=="started"end,
exists=function(fa)
local ga=C(fa.name)
return ga~="missing"and ga~="unknown"
end,
version=function(fa)return ca(fa.name,"version")[1]end,
author=function(fa)return ca(fa.name,"author")[1]end,
description=function(fa)return ca(fa.name,"description")[1]end,
fxVersion=function(fa)return ca(fa.name,"fx_version")[1]end,
dependencies=function(fa)
local ga,ha={},{}
for ia,ja in y(ca(fa.name,"dependencies"))do
if ja:sub(1,1)~="/"and not ha[ja]then
ha[ja]=true
ga[#ga+1]=ja
end
end
return ga
end,
commands=function(fa)
local ga={}
for ha,ia in y(K(fa.name)or{})do
ga[#ga+1]={name=Q(ia.name),resource=Q(ia.resource),arity=R(ia.arity)or-1}
end
return ga
end,
}
local ga={
__index=function(ga,ha)
local ia=fa[ha]
if ia then return ia(ga)end
return Z[ha]
end,
__newindex=function(ga,ha)
if fa[ha]or Z[ha]then S(Q(ga).."."..Q(ha).." is read-only",2)end
S(Q(ga).." has no property '"..Q(ha).."'",2)
end,
__name="fx.Resource",
__tostring=function(ga)return"fx.Resource("..ga.name..")"end,
}
local function ha(ia,ja,ka)
local la,ma=U(ja,ia)
if not la then Y:error("%s %s: %s",ia.name,ka,Q(ma))end
end
local function ia(ja,ka)
ja[#ja+1]=ka
return function()
for la=#ja,1,-1 do
if ja[la]==ka then W(ja,la);return end
end
end
end
local function ja(ka,la,ma)
local na=aa[ka]
if not na then return end
for oa,pa in y({z(na[la])})do ha(na,pa,ma)end
end
local ka={}
D("onResourceStart",function(la)
if not aa[la]then return end
local ma={}
ka[la]=ma
E(function()
local na=G()+10000
while ka[la]==ma and C(la)~="started"and G()<na do F(0)end
if ka[la]~=ma then return end
ka[la]=nil
if C(la)=="started"then ja(la,"startHandlers","onStart")end
end)
end)
D("onResourceStop",function(la)
ka[la]=nil
ja(la,"stopHandlers","onStop")
end)
function Z:call(ma,...)
if P(ma)~="string"then S(Q(self)..":call: export must be a string",2)end
local na=self.name
if C(na)~="started"then return false,na.." is not started"end
return U(function(...)
local oa=A[na]
return oa[ma](oa,...)
end,...)
end
function Z:onStart(ma)
if P(ma)~="function"then S(Q(self)..":onStart: fn must be a function",2)end
local na=ia(self.startHandlers,ma)
if C(self.name)=="started"then
E(function()
for oa,pa in y(self.startHandlers)do
if pa==ma then ha(self,ma,"onStart");return end
end
end)
end
return na
end
function Z:onStop(ma)
if P(ma)~="function"then S(Q(self)..":onStop: fn must be a function",2)end
return ia(self.stopHandlers,ma)
end
function Z:getMetadata(ma)
da(self,"getMetadata",ma)
return ca(self.name,ma)[1]
end
function Z:getMetadataList(ma)
da(self,"getMetadataList",ma)
return ca(self.name,ma)
end
function Z:loadFile(ma)
if P(ma)~="string"or ma==""then S(Q(self)..":loadFile: path must be a non-empty string",2)end
return J(self.name,ma)
end
function Z:loadJson(ma)
if P(ma)~="string"or ma==""then S(Q(self)..":loadJson: path must be a non-empty string",2)end
local na=J(self.name,ma)
if na==nil then return nil,("%s: file not found: %s"):format(self.name,ma)end
local oa,pa=U(X.decode,na)
if not oa or pa==nil then return nil,("%s: invalid JSON in %s"):format(self.name,ma)end
return pa
end
function Z:isVersionAtLeast(ma)
local na=P(ma)=="string"and ea(ma)or nil
if not na then S(Q(self)..":isVersionAtLeast: min must be a version string like '1.2.0'",2)end
local oa=ca(self.name,"version")[1]
local pa=oa and ea(oa)
if not pa then return false end
for qa=1,B(#pa,#na)do
local ra,sa=pa[qa]or 0,na[qa]or 0
if ra~=sa then return ra>sa end
end
return true
end
function Z:waitForStartAsync(ma)
local na=self.name
return e.waitUntil(Q(self)..":waitForStartAsync",function()return C(na)=="started"end,
ma,self)
end
if e.isServer then
local la,ma=GetResourcePath,SaveResourceFile
local na,oa=StartResource,StopResource
local function pa(qa,ra)
if qa.name==N()then
S(Q(qa)..":"..ra..": a resource cannot "..ra.." itself",3)
end
end
local function qa(ra)return ra==true or ra==1 end
fa.path=function(ra)return la(ra.name)end
function Z:saveFile(sa,ta)
if P(sa)~="string"or sa==""then S(Q(self)..":saveFile: path must be a non-empty string",2)end
if P(ta)~="string"then S(Q(self)..":saveFile: data must be a string",2)end
return qa(ma(self.name,sa,ta,#ta))
end
function Z:start()
pa(self,"start")
return qa(na(self.name))
end
function Z:stop()
pa(self,"stop")
return qa(oa(self.name))
end
function Z:restart()
pa(self,"restart")
if C(self.name)=="started"then oa(self.name)end
return qa(na(self.name))
end
end
local function la(ma)
if P(ma)~="string"or ma==""then S("fx.Resource: name must be a non-empty string",3)end
local na=aa[ma]
if not na then
na=V({name=ma,startHandlers={},stopHandlers={}},ga)
aa[ma]=na
end
return na
end
rawset(p,"call",la)
w.current=function()return la(N())end
w.invoking=function()
local ma=O()
if ma==nil or ma==""then return nil end
return la(ma)
end
u.all=function()
local ma={}
for na=0,(L()or 0)-1 do
local oa=M(na)
if oa~=nil and oa~=""then ma[#ma+1]=la(oa)end
end
return ma
end
end
return e.finalizeModule(p)]],
["server/RoutingBucket.lua"]=[[
local a,b=...
local c,d=type,GetHashKey
local f,g,j=math.type,math.tointeger,math.modf
local l=b.defineModule("RoutingBucket")
local m,n,o=l.methods,l.getters,l.setters
local q,r,s=l.statics,l.staticGetters,l.staticSetters
do
local t,u=rawget,rawset
local w,x=SetPlayerRoutingBucket,GetPlayerRoutingBucket
local y,z=SetEntityRoutingBucket,GetEntityRoutingBucket
local A,B=
SetRoutingBucketEntityLockdownMode,SetRoutingBucketPopulationEnabled
local C,D,E=GetAllPeds,GetAllVehicles,GetAllObjects
local F,G,H,I,J,K,L=
c,error,tostring,setmetatable,select,ipairs,math.type
local M=b.lazyWrap("Entity")
local N={strict=true,relaxed=true,inactive=true}
local O={}
local P={}
local Q={
__index=function(Q,R)
if R=="lockdown"then return t(Q,"_lockdown")end
if R=="population"then return t(Q,"_population")end
return O[R]
end,
__newindex=function(Q,R,S)
if R=="lockdown"then
if not N[S]then G(H(Q)..".lockdown: expected \"strict\", \"relaxed\" or \"inactive\", got "..H(S),2)end
A(Q.id,S)
u(Q,"_lockdown",S)
elseif R=="population"then
if F(S)~="boolean"then G(H(Q)..".population: expected a boolean, got "..H(S),2)end
B(Q.id,S)
u(Q,"_population",S)
else
G(H(Q).." has no property '"..H(R).."'",2)
end
end,
__name="fx.RoutingBucket",
__tostring=function(Q)return"fx.RoutingBucket("..Q.id..")"end,
}
local function R(S)
local U=P[S]
if not U then
U=I({id=S,_population=true},Q)
P[S]=U
end
return U
end
local function S(U)
if a.Player.is(U)then return"player",H(U.handle)end
if a.Entity.is(U)then return"entity",U.handle end
return nil,nil
end
function O:add(...)
for V=1,J("#",...)do
local W,X=S((J(V,...)))
if W=="player"then w(X,self.id)
elseif W=="entity"then y(X,self.id)
else G(("%s:add: argument %d is not an fx.Player or an fx.Entity"):format(H(self),V),2)end
end
end
function O:players()
local V={}
for W,X in K(a.Player.all())do
if x(H(X.handle))==self.id then V[#V+1]=X end
end
return V
end
function O:entities()
local V={}
for W,X in K({C(),D(),E()})do
for Y,Z in K(X)do
if z(Z)==self.id then
local aa=M(Z)
if aa then V[#V+1]=aa end
end
end
end
return V
end
local function U(V)
if L(V)~="integer"or V<0 then G("fx.RoutingBucket: id must be a positive integer, got "..H(V),3)end
return R(V)
end
u(l,"call",U)
q.of=function(V)
local W,X=S(V)
if W=="player"then return R(x(X))end
if W=="entity"then return R(z(X))end
G("RoutingBucket.of: expected an fx.Player or an fx.Entity, got "..H(V),2)
end
local V=0
q.create=function()
local W={}
for X,Y in K(a.Player.all())do W[x(H(Y.handle))]=true end
for X,Y in K({C(),D(),E()})do
for Z,aa in K(Y)do W[z(aa)]=true end
end
local X=V+1
while W[X]do X=X+1 end
V=X
return R(X)
end
end
return b.finalizeModule(l)]],
["server/Vehicle.lua"]=[[
local a,c=...
local d,e=type,GetHashKey
local f,i,j=math.type,math.tointeger,math.modf
local k=c.defineType("Vehicle",{kind="entity",parent="Entity",entityType=2})
local l,m,n=k.methods,k.getters,k.setters
local o,q,s=k.statics,k.staticGetters,k.staticSetters
local t=c.lazyWrap("Ped")
local u=c.lazyWrap("Vehicle")
do
local w=GetVehicleBodyHealth
m.bodyHealth=function(A)
return w(A.handle)
end
end
do
local w=SetVehicleBodyHealth
n.bodyHealth=function(A,B)
B=(B or 0)+0.0
w(A.handle,B)
end
end
do
local w=CreatePedInsideVehicle
l.createPedInside=function(A,B,C,D,E,F)
if f(B)=="float"then B=i((j(B)))or 0 end
local G=d(C)
if G=="string"then C=e(C)elseif G=="table"then C=C.handle end
if f(D)=="float"then D=i((j(D)))or 0 end
local H=w(A.handle,B,C,D,E,F)
return t(H)
end
end
do
local w=CreateVehicle
o.createRpc=function(A,B,C,D,E)
local F=d(A)
if F=="string"then A=e(A)elseif F=="table"then A=A.handle end
C=(C or 0)+0.0
local G=w(A,B.x,B.y,B.z,C,D,E)
return u(G)
end
end
do
local w=GetVehicleDirtLevel
m.dirtLevel=function(A)
return w(A.handle)
end
end
do
local w=SetVehicleDirtLevel
n.dirtLevel=function(A,B)
B=(B or 0)+0.0
w(A.handle,B)
end
end
do
local w=DoesBoatSinkWhenWrecked
m.doesBoatSinkWhenWrecked=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=DoesTrainStopAtStations
m.doesTrainStopAtStations=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=GetVehicleDoorLockStatus
m.doorLockStatus=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleDoorsLockedForPlayer
m.doorsLockedForPlayer=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleEngineHealth
m.engineHealth=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleFlightNozzlePosition
m.flightNozzlePosition=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleColours
l.getColours=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleCustomPrimaryColour
l.getCustomPrimaryColour=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleCustomSecondaryColour
l.getCustomSecondaryColour=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleDashboardColour
l.getDashboardColour=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
return w(A.handle,B)
end
end
do
local w=GetVehicleDoorStatus
l.getDoorStatus=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
return w(A.handle,B)
end
end
do
local w=GetVehicleExtraColours
l.getExtraColours=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleInteriorColour
l.getInteriorColour=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
return w(A.handle,B)
end
end
do
local w=GetLastPedInVehicleSeat
l.getLastPedInSeat=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
local C=w(A.handle,B)
return t(C)
end
end
do
local w=GetVehicleLightsState
l.getLightsState=function(A)
local B,C,D=w(A.handle)
return(B~=false and B~=0 and B~=nil),(C~=false and C~=0 and C~=nil),(D~=false and D~=0 and D~=nil)
end
end
do
local w=GetVehicleNeonColour
l.getNeonColour=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleNeonEnabled
l.getNeonEnabled=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
local C=w(A.handle,B)
return(C~=false and C~=0 and C~=nil)
end
end
do
local w=GetPedInVehicleSeat
l.getPedInSeat=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
local C=w(A.handle,B)
return t(C)
end
end
do
local w=GetVehicleTyreSmokeColor
l.getTyreSmokeColor=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleHandbrake
m.handbrake=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=HasVehicleBeenDamagedByBullets
m.hasBeenDamagedByBullets=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=HasVehicleBeenOwnedByPlayer
m.hasBeenOwnedByPlayer=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=HasEntityBeenMarkedAsNoLongerNeeded
m.hasEntityBeenMarkedAsNoLongerNeeded=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=GetVehicleHeadlightsColour
m.headlightsColour=function(A)
return w(A.handle)
end
end
do
local w=GetHeliBodyHealth
m.heliBodyHealth=function(A)
return w(A.handle)
end
end
do
local w=GetHeliDisableExplodeFromBodyDamage
m.heliDisableExplodeFromBodyDamage=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=GetHeliEngineHealth
m.heliEngineHealth=function(A)
return w(A.handle)
end
end
do
local w=GetHeliGasTankHealth
m.heliGasTankHealth=function(A)
return w(A.handle)
end
end
do
local w=GetHeliMainRotorDamageScale
m.heliMainRotorDamageScale=function(A)
return w(A.handle)
end
end
do
local w=GetHeliMainRotorHealth
m.heliMainRotorHealth=function(A)
return w(A.handle)
end
end
do
local w=GetHeliPitchControl
m.heliPitchControl=function(A)
return w(A.handle)
end
end
do
local w=GetHeliRearRotorDamageScale
m.heliRearRotorDamageScale=function(A)
return w(A.handle)
end
end
do
local w=GetHeliRearRotorHealth
m.heliRearRotorHealth=function(A)
return w(A.handle)
end
end
do
local w=GetHeliRollControl
m.heliRollControl=function(A)
return w(A.handle)
end
end
do
local w=GetHeliTailRotorDamageScale
m.heliTailRotorDamageScale=function(A)
return w(A.handle)
end
end
do
local w=GetHeliTailRotorHealth
m.heliTailRotorHealth=function(A)
return w(A.handle)
end
end
do
local w=GetHeliThrottleControl
m.heliThrottleControl=function(A)
return w(A.handle)
end
end
do
local w=GetHeliYawControl
m.heliYawControl=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleHomingLockonState
m.homingLockonState=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleHornType
m.hornType=function(A)
return w(A.handle)
end
end
do
local w=IsBoatAnchoredAndFrozen
m.isBoatAnchoredAndFrozen=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsBoatWrecked
m.isBoatWrecked=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=GetIsVehicleEngineRunning
m.isEngineRunning=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsVehicleEngineStarting
m.isEngineStarting=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsVehicleExtraTurnedOn
l.isExtraTurnedOn=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
local C=w(A.handle,B)
return(C~=false and C~=0 and C~=nil)
end
end
do
local w=GetIsHeliEngineRunning
m.isHeliEngineRunning=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsHeliTailBoomBreakable
m.isHeliTailBoomBreakable=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsHeliTailBoomBroken
m.isHeliTailBoomBroken=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=GetIsVehiclePrimaryColourCustom
m.isPrimaryColourCustom=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=GetIsVehicleSecondaryColourCustom
m.isSecondaryColourCustom=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsVehicleSirenOn
m.isSirenOn=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsTrainCaboose
m.isTrainCaboose=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=IsVehicleTyreBurst
l.isTyreBurst=function(A,B,C)
if f(B)=="float"then B=i((j(B)))or 0 end
local D=w(A.handle,B,C)
return(D~=false and D~=0 and D~=nil)
end
end
do
local w=IsVehicleWindowIntact
l.isWindowIntact=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
local C=w(A.handle,B)
return(C~=false and C~=0 and C~=nil)
end
end
do
local w=GetLandingGearState
m.landingGearState=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleLivery
m.livery=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleLockOnTarget
m.lockOnTarget=function(A)
local B=w(A.handle)
return u(B)
end
end
do
local w=GetVehicleNumberPlateText
m.numberPlateText=function(A)
return w(A.handle)
end
end
do
local w=SetVehicleNumberPlateText
n.numberPlateText=function(A,B)
w(A.handle,B)
end
end
do
local w=GetVehicleNumberPlateTextIndex
m.numberPlateTextIndex=function(A)
return w(A.handle)
end
end
do
local w=GetVehiclePetrolTankHealth
m.petrolTankHealth=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleRadioStationIndex
m.radioStationIndex=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleRoofLivery
m.roofLivery=function(A)
return w(A.handle)
end
end
do
local w=SetVehicleAlarm
l.setAlarm=function(A,B)
w(A.handle,B)
return A
end
end
do
local w=SetVehicleColourCombination
l.setColourCombination=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
w(A.handle,B)
return A
end
end
do
local w=SetVehicleColours
l.setColours=function(A,B,C)
if f(B)=="float"then B=i((j(B)))or 0 end
if f(C)=="float"then C=i((j(C)))or 0 end
w(A.handle,B,C)
return A
end
end
do
local w=SetVehicleCustomPrimaryColour
l.setCustomPrimaryColour=function(A,B,C,D)
if f(B)=="float"then B=i((j(B)))or 0 end
if f(C)=="float"then C=i((j(C)))or 0 end
if f(D)=="float"then D=i((j(D)))or 0 end
w(A.handle,B,C,D)
return A
end
end
do
local w=SetVehicleCustomSecondaryColour
l.setCustomSecondaryColour=function(A,B,C,D)
if f(B)=="float"then B=i((j(B)))or 0 end
if f(C)=="float"then C=i((j(C)))or 0 end
if f(D)=="float"then D=i((j(D)))or 0 end
w(A.handle,B,C,D)
return A
end
end
do
local w=SetVehicleDoorBroken
l.setDoorBroken=function(A,B,C)
if f(B)=="float"then B=i((j(B)))or 0 end
w(A.handle,B,C)
return A
end
end
do
local w=SetVehicleDoorsLocked
l.setDoorsLocked=function(A,B)
if f(B)=="float"then B=i((j(B)))or 0 end
w(A.handle,B)
return A
end
end
do
local w=GetVehicleSteeringAngle
m.steeringAngle=function(A)
return w(A.handle)
end
end
do
local w=TaskEveryoneLeaveVehicle
l.taskEveryoneLeave=function(A)
w(A.handle)
return A
end
end
do
local w=GetThrusterSideRcsThrottle
m.thrusterSideRcsThrottle=function(A)
return w(A.handle)
end
end
do
local w=GetThrusterThrottle
m.thrusterThrottle=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleTotalRepairs
m.totalRepairs=function(A)
return w(A.handle)
end
end
do
local w=GetTrainBackwardCarriage
m.trainBackwardCarriage=function(A)
return w(A.handle)
end
end
do
local w=GetTrainCarriageEngine
m.trainCarriageEngine=function(A)
return w(A.handle)
end
end
do
local w=GetTrainCarriageIndex
m.trainCarriageIndex=function(A)
return w(A.handle)
end
end
do
local w=GetTrainCruiseSpeed
m.trainCruiseSpeed=function(A)
return w(A.handle)
end
end
do
local w=GetTrainDirection
m.trainDirection=function(A)
local B=w(A.handle)
return(B~=false and B~=0 and B~=nil)
end
end
do
local w=GetTrainForwardCarriage
m.trainForwardCarriage=function(A)
return w(A.handle)
end
end
do
local w=GetTrainState
m.trainState=function(A)
return w(A.handle)
end
end
do
local w=GetTrainTrackIndex
m.trainTrackIndex=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleType
m.vehicleType=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleWheelType
m.wheelType=function(A)
return w(A.handle)
end
end
do
local w=GetVehicleWindowTint
m.windowTint=function(A)
return w(A.handle)
end
end
do
local w=tostring
local A=CreateVehicleServerSetter
o.createRaw=function(B,C,D,E)
local F=c.hash(B)
local G=A(F,E and E.type or"automobile",
C.x,C.y,C.z,c.heading(C,D))
local H=k.wrap(G)
if H then c.applyServerOptions(H,E)end
return H
end
o.createAsync=c.makeCreate("Vehicle.createAsync",o.createRaw)
local B,C,D=CreatePedInsideVehicle,DoesEntityExist,DeleteEntity
local E=c.lazyWrap("Ped")
l.createPedInsideAsync=function(F,G,H,I)
local J=w(F)..":createPedInsideAsync"
local K=c.hash(G)
if d(K)~="number"then return c.fail(("%s: invalid model '%s'"):format(J,w(G)))end
local L=E(B(F.handle,I and I.pedType or 4,K,H or-1,true,true))
if not L then return c.fail(J..": creation failed (invalid vehicle or model)")end
c.applyServerOptions(L,I)
return L:readyAsync(I and I.timeout,not(I and I.waitOwner==false)):next(nil,function(M)
if C(L.handle)then D(L.handle)end
c.forget(L)
return a.Promise.reject(M)
end)
end
end
return c.finalize(k)]]
}
if fx~=nil and type(fx)=="table"and rawget(fx,"__fx")then return end
local a,b,c=Entity,Player,GlobalState
local d,e,f=LoadResourceFile,IsDuplicityVersion,GetConvarInt
local g,h,i,j,l,m,n=load,error,rawget,rawset,setmetatable,type,tostring
local o=(debug.getinfo(1,"S").source or""):match("^@@([^/]+)/")or"fx"
local p=e()
local q=p and"server"or"client"
local r=p and{Blip="Blip.lua",Cfx="Cfx.lua",Command="Command.lua",Convar="Convar.lua",Entity="Entity.lua",Events="Events.lua",Global="Global.lua",Http="Http.lua",Kvp="Kvp.lua",Model="Model.lua",Mumble="Mumble.lua",Object="Object.lua",Ped="Ped.lua",Player="Player.lua",Resource="Resource.lua",RoutingBucket="RoutingBucket.lua",Vehicle="Vehicle.lua"}
or{App="App.lua",Audio="Audio.lua",Blip="Blip.lua",Brain="Brain.lua",Cam="Cam.lua",Cfx="Cfx.lua",Checkpoint="Checkpoint.lua",Clock="Clock.lua",Command="Command.lua",Control="Control.lua",Convar="Convar.lua",Cutscene="Cutscene.lua",Datafile="Datafile.lua",Decorator="Decorator.lua",Discord="Discord.lua",Dlc="Dlc.lua",Dui="Dui.lua",Entity="Entity.lua",Event="Event.lua",Events="Events.lua",Files="Files.lua",Fire="Fire.lua",Game="Game.lua",GamerTag="GamerTag.lua",Global="Global.lua",Graphics="Graphics.lua",Hud="Hud.lua",Interior="Interior.lua",Itemset="Itemset.lua",Keybind="Keybind.lua",Kvp="Kvp.lua",LoadingScreen="LoadingScreen.lua",Localization="Localization.lua",Location="Location.lua",Mobile="Mobile.lua",Model="Model.lua",Money="Money.lua",Mumble="Mumble.lua",Netshopping="Netshopping.lua",Network="Network.lua",Nui="Nui.lua",Object="Object.lua",Pad="Pad.lua",ParticleFx="ParticleFx.lua",Pathfind="Pathfind.lua",Ped="Ped.lua",PedGroup="PedGroup.lua",Physics="Physics.lua",Pickup="Pickup.lua",Player="Player.lua",Population="Population.lua",Recording="Recording.lua",RelationshipGroup="RelationshipGroup.lua",Replay="Replay.lua",Resource="Resource.lua",Rope="Rope.lua",Scaleform="Scaleform.lua",Screen="Screen.lua",Script="Script.lua",Shapetest="Shapetest.lua",Socialclub="Socialclub.lua",Sound="Sound.lua",Stats="Stats.lua",Streaming="Streaming.lua",Submix="Submix.lua",System="System.lua",Task="Task.lua",Timecycle="Timecycle.lua",Vehicle="Vehicle.lua",Water="Water.lua",Weapon="Weapon.lua",Weather="Weather.lua",Zone="Zone.lua"}
local s={AimFlag=true,AnchorPoints=true,ApplyForceTypes=true,AudAnimalMood=true,AudAnimalType=true,AudContextBlockTarget=true,AudDamageReason=true,Audibility=true,AudSpecialEffectMode=true,AudVehiclePriority=true,BlipColor=true,BlipSprite=true,BlockingObjectFlags=true,BoatMissionFlags=true,BusySpinnerType=true,CamSplineSmoothingFlags=true,CamViewMode=true,CargobobHook=true,CellInput=true,CombatAttribute=true,CombatRange=true,Context=true,Control=true,DecalTypes=true,DecorType=true,DispatchType=true,DoorId=true,DriveBehaviorFlags=true,DrivingMode=true,EntityOrphanMode=true,EventType=true,ExplosionTag=true,FiringPatternHashes=true,FollowPointRouteMode=true,FontBitField=true,ForceType=true,GfxDrawOrder=true,GpsSlotType=true,GravityLevel=true,HeadlightColors=true,HeliMissionFlags=true,HornTypes=true,HudColours=true,HudIndexes=true,IkPart=true,IkTargetFlags=true,InstructionalButtonTypes=true,KeyboardType=true,LogLevel=true,MousePointerStyle=true,MpGamerTagComponent=true,MpSettingSpawn=true,NavScriptFlags=true,neonIndex=true,NetObjEntityType=true,NMFallType=true,NodeFlags=true,ObjectPaintVariants=true,OSKStatus=true,PadType=true,PauseMenuState=true,PedBoneId=true,PedClothes=true,PedCompFlags=true,PedConfigFlags=true,PedDecorationZone=true,PedFaceFeatures=true,PedMotionState=true,PedOverlays=true,PedProps=true,PedType=true,PedVarComp=true,PeerStatistics=true,PhysicsRopeType=true,PlaneDamageSection=true,PlayerSpawnLocation=true,PlayerSwitchType=true,Reactions=true,RenderingOptionFlags=true,RoofState=true,RopeFlags=true,RotationOrder=true,ScriptedAnimFlags=true,SeatPosition=true,SpawnReason=true,SwitchFlags=true,TattooFaction=true,TempAction=true,TextFonts=true,TraceFlags=true,TrackedStuntType=true,TrafficlightOverrideMode=true,VehicleDrivetrainType=true,VehicleDrivingFlags=true,VehicleHeadlightShadowFlags=true,VehicleLightSetting=true,VehicleLockState=true,VehicleMissionType=true,VehicleMods=true,VehicleModType=true,VehicleNodeProperties=true,VehiclePlateIndicies=true,VehiclePlateType=true,VehicleType=true,VehicleWheels=true,VehicleWheelType=true,ViolationType=true,WeaponAnimationOverrides=true,WindowId=true,WindowTints=true,ZoneScumminess=true}
local u="@@"..GetCurrentResourceName().."/fx/"
local function w(x,...)
local y=FX_BUNDLE[x]
if not y then h(("fx: '%s' is not in the bundle"):format(x),3)end
local z,A=g(y,u..x,"t")
if not z then h(A,3)end
return z(...)
end
local x={debug=f("fx_debug",0)==1}
local y=w("shared/promise.lua",{
SetTimeout=Citizen.SetTimeout,ClearTimeout=Citizen.ClearTimeout,Await=Citizen.Await,
CreateThreadNow=Citizen.CreateThreadNow,trace=Citizen.Trace,config=x,
})
local z={__fx=true,version="0.5.1",Promise=y.Promise,async=y.async,await=y.await}
local A=w("shared/core.lua",{fx=z,config=x,Promise=y.Promise,isServer=p})
A.msgpack=w("shared/msgpack.lua",{rt=A})
j(z,"msgpack",A.msgpack)
A.events=w("shared/events.lua",{rt=A})
A.states=w("shared/states.lua",{
rt=A,config=x,
NativeEntity=a,NativePlayer=b,NativeGlobalState=c,
})
j(z,"Enum",l({},{
__index=function(B,C)
if not s[C]then h("fx.Enum has no enum '"..n(C).."'",2)end
local D=w("shared/enums/"..C..".lua")
j(B,C,D)
return D
end,
__newindex=function()h("fx.Enum is read-only",2)end,
}))
local B={Logger="shared/logger.lua",Schema="shared/schema.lua",Channel="shared/channel.lua",Rpc="shared/rpc.lua"}
local C={}
l(z,{
__index=function(D,E)
if E=="debug"then return x.debug end
local F=B[E]
if F then
local G=w(F,{config=x,isServer=p,rt=A,fx=D})
j(D,E,G)
return G
end
local G=r[E]
if not G then return nil end
if C[E]then h("fx: circular load of '"..E.."'",2)end
C[E]=true
local H=w(q.."/"..G,D,A)
C[E]=nil
j(D,E,H)
return H
end,
__newindex=function(D,E,F)
if E=="debug"then A.setDebug(F);return end
h("fx: cannot assign fx."..n(E),2)
end,
})
fx=z
