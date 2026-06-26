--// The file Deobfucator by Wonldo.cc
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

if PlayerGui:FindFirstChild("LoadingUI") then
    PlayerGui.LoadingUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadingUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 360, 0, 180)
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -90)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 0, 0, 0)
MainFrame.Parent = ScreenGui

local MainUICorner = Instance.new("UICorner")
MainUICorner.CornerRadius = UDim.new(0, 12)
MainUICorner.Parent = MainFrame

local BackgroundImage = Instance.new("ImageLabel")
BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)
BackgroundImage.Position = UDim2.new(0, 0, 0, 0)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Image = "rbxassetid://14006671358"
BackgroundImage.ScaleType = Enum.ScaleType.Crop
BackgroundImage.Parent = MainFrame

local ImageCorner = Instance.new("UICorner")
ImageCorner.CornerRadius = UDim.new(0, 12)
ImageCorner.Parent = BackgroundImage

local PercentText = Instance.new("TextLabel")
PercentText.Name = "PercentText"
PercentText.Size = UDim2.new(1, 0, 0, 40)
PercentText.Position = UDim2.new(0, 0, 0.4, -20)
PercentText.BackgroundTransparency = 1
PercentText.Font = Enum.Font.GothamBold
PercentText.Text = "0%"
PercentText.TextColor3 = Color3.fromRGB(255, 105, 180)
PercentText.TextSize = 32
PercentText.ZIndex = 3
PercentText.Parent = MainFrame

local ProgressBarBackground = Instance.new("Frame")
ProgressBarBackground.Name = "ProgressBarBackground"
ProgressBarBackground.Size = UDim2.new(0, 280, 0, 8)
ProgressBarBackground.Position = UDim2.new(0.5, -140, 0.75, 0)
ProgressBarBackground.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
ProgressBarBackground.BorderSizePixel = 0
ProgressBarBackground.ZIndex = 2
ProgressBarBackground.Parent = MainFrame

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(1, 0)
BarCorner.Parent = ProgressBarBackground

local ProgressBar = Instance.new("Frame")
ProgressBar.Name = "ProgressBar"
ProgressBar.Size = UDim2.new(0, 0, 1, 0)
ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
ProgressBar.BorderSizePixel = 0
ProgressBar.ZIndex = 3
ProgressBar.Parent = ProgressBarBackground

local ProgressCorner = Instance.new("UICorner")
ProgressCorner.CornerRadius = UDim.new(1, 0)
ProgressCorner.Parent = ProgressBar

local function AnimateLoading()
    local openTween = TweenService:Create(MainFrame, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 360, 0, 180)
    })
    openTween:Play()
    openTween.Completed:Wait()
    
    task.wait(0.3)
    
    local targetPercent = 100
    for i = 1, targetPercent do
        PercentText.Text = tostring(i) .. "%"
        
        local progressRatio = i / targetPercent
        TweenService:Create(ProgressBar, TweenInfo.new(0.05, Enum.EasingStyle.Linear), {
            Size = UDim2.new(progressRatio, 0, 1, 0)
        }):Play()
        
        if i < 20 then
            task.wait(0.02)
        elseif i >= 20 and i < 50 then
            task.wait(0.04)
        elseif i >= 50 and i < 80 then
            task.wait(0.01)
        else
            task.wait(0.05)
        end
    end
    
    PercentText.Text = "Script In Loading!"
    task.wait(0.8)
    
    local closeTween = TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1
    })
    closeTween:Play()
    closeTween.Completed:Wait()
    
    ScreenGui:Destroy()
end

AnimateLoading()

return(function(...)local u={"\049\114\115\103\076\079\052\047\115\054\049\057\118\084\101\118";"\067\117\085\069\118\043\061\061","\080\086\115\113\067\074\101\066";"\049\069\103\106\118\089\085\115\051\115\108\090\115\069\115\068";"\049\117\071\110\053\117\070\050";"\117\084\119\108\075\066\108\103\081\114\077\056\117\115\066\117";"\080\114\115\069\067\117\115\069\053\099\075\065\053\086\106\066";"\103\084\049\099\070\115\115\075\105\081\113\066\115\114\071\069";"\099\102\088\077\067\086\075\066\076\043\061\061";"\101\074\070\102\053\048\061\061","\053\114\065\065\080\048\061\061";"\067\111\068\061";"\067\111\078\061";"\080\074\075\047\118\117\071\054","\049\089\088\073\049\098\119\077\067\086\080\061";"\105\117\049\118\080\066\085\103\101\069\088\056\103\117\071\074\103\103\061\061","\051\114\070\097\118\089\065\050\075\081\106\051\049\081\065\070";"\121\105\070\057\121\085\049\069\067\054\065\079\101\114\075\070\053\117\079\061";"\053\114\088\104\053\114\085\069","\101\114\085\113\101\103\061\061";"\069\052\050\112\121\076\069\100\121\077\112\078\101\048\057\049\084\113\071\077\101\049\120\109\118\101\048\100\118\118\121\049\071\090\086\113\052\099\097\056\099\111\115\048\105\121\049\055\071\072\115\090\099\048\111\111\075\088\116\112\119\087\113\080\113\090\051\066\113\052\121\119\057\088\114\065\082\103\068\099\079\103\073\050\068\073\084\109\081\066\072\122\101\098\103\071\079\103\056\120\043\084\101\105\120\097\073\069\112\071\102\119\103\066\089\075\075\120\069\104\067\104\102\065\067\066\101\102\056\115\121\107\057\080\087\101\108\079\051\097\069\043\090\115\097\067\103\072\053\066\055\076\047\070\056\053\083\048\069\109";"\100\089\071\072\100\073\065\078";"\067\089\115\104","\101\099\119\047\067\074\068\061","\101\114\102\065\049\089\070\052","\121\078\065\122\100\054\075\110\053\115\065\050\053\099\115\108\121\103\061\061","\081\069\113\066\118\084\066\083\075\114\113\104\075\111\115\117\115\110\061\061";"\080\086\085\104\101\089\088\113","\118\105\078\047\075\111\053\114\118\114\075\118\101\079\101\089\117\098\068\061";"\049\089\085\097\067\089\081\061","";"\115\089\085\113\080\089\115\047\068\078\075\066\049\089\115\084\049\089\115\079\068\103\061\061";"\099\102\088\113\101\099\075\065\049\089\085\097\067\089\081\061";"\100\111\085\089\051\115\077\106\101\086\049\108\100\081\113\047";"\121\048\061\061","\081\079\077\057\080\117\070\072\105\079\071\108\075\079\065\115\067\103\061\061","\101\086\106\057\067\074\068\061";"\100\098\075\069\080\078\049\066\049\043\061\061","\099\102\088\072\101\117\122\061";"\118\105\115\054\076\099\115\101\049\115\077\114\049\084\103\069\101\085\068\061","\080\089\070\065\067\089\110\061","\053\054\066\069\101\103\061\061","\099\102\088\054\053\110\061\061","\121\097\048\066\101\082\052\077\121\048\061\061";"\049\089\088\104\049\117\102\097\101\099\068\061";"\105\105\078\074\103\073\108\053";"\067\089\088\065\101\098\070\069\080\086\066\104\101\110\061\061"}for G,R in ipairs({{474491-474490;-640330-(-640377)};{692490-692489,990930+-990885},{-596621+596667;-681886+681933}})do while R[-823286-(-823287)]<R[169073-169071]do u[R[213308-213307]],u[R[-543283-(-543285)]],R[-200482-(-200483)],R[-421385+421387]=u[R[23893+-23891]],u[R[-1017533-(-1017534)]],R[48258-48257]+(229881-229880),R[620674-620672]-(-212575-(-212576))end end local function G(G)return u[G+(1033440+-998051)]end do local G={["\051"]=-696580+696592;m=-296443-(-296506),["\053"]=-497376+497400;W=921681-921639,V=-656600+656638;I=637157-637106,H=-681160-(-681204);w=-1003340+1003349,r=-744606-(-744660),T=115095-115060,c=-746543-(-746566),J=625254+-625199;["\049"]=-671982+672011,X=-635736+635797,S=-425066-(-425077),f=155404+-155351,z=701113+-701057;b=-668937+668944,o=-166604-(-166607),Z=-458145+458160;l=604948+-604947;q=-271795-(-271840);x=937014+-936955,F=373483+-373470,["\052"]=-956152+956192,B=554920+-554883,A=-444215-(-444248);s=100501+-100480;y=-265513-(-265527),["\047"]=441013-440963,["\043"]=-671405+671405;R=-976304-(-976306),v=413007+-412981;j=-612321+612370;a=-489344-(-489378),G=-298903+298960,P=-483985-(-484013),u=-600777-(-600799),E=-836041-(-836093);N=-991407-(-991411),O=1033222+-1033186,["\054"]=-729018+729057;["\048"]=440373-440341;p=752583+-752525,h=770884-770838;K=124897-124880;D=1005963-1005955;Y=-689107-(-689113),g=-18188+18204;d=17076+-17058,M=-900933-(-900974);e=-879364+879389;["\056"]=-309042-(-309052);["\055"]=583729-583667,n=-169772+169820,["\057"]=636711-636664;i=-432320+432339,t=179852-179821;["\050"]=2419+-2376,C=983711-983684;Q=872862-872842,L=-987289-(-987319),U=292478-292473;k=1012933-1012873}local R=table.insert local D=string.len local h=table.concat local v=math.floor local s=string.char local F=type local S=string.sub local C=u for u=-818025+818026,#C,205516+-205515 do local E=C[u]if F(E)=="\115\116\114\105\110\103"then local F=D(E)local a={}local d=498674+-498673 local o=-378210+378210 local b=-187790+187790 while d<=F do local u=S(E,d,d)local D=G[u]if D then o=o+D*(-95517-(-95581))^((-56727-(-56730))-b)b=b+(679012-679011)if b==-1044876-(-1044880)then b=532519-532519 local u=v(o/(36945+28591))local G=v((o%(345848+-280312))/(-459813-(-460069)))local D=o%(-379145-(-379401))R(a,s(u,G,D))o=-647913-(-647913)end elseif u=="\061"then R(a,s(v(o/(167285+-101749))))if d>=F or S(E,d+(-137739-(-137740)),d+(-873817+873818))~="\061"then R(a,s(v((o%(108852-43316))/(-49782+50038))))end break end d=d+(-244017-(-244018))end C[u]=h(a)end end end return(function(u,D,h,v,s,F,S,d,b,C,p,R,a,B,t,W,k,o,E,N,U)t,p,k,N,E,U,C,b,W,B,d,R,o,a=function(u,G)local D=o(G)local h=function(h,v)return R(u,{h;v},G,D)end return h end,function(u,G)local D=o(G)local h=function(h,v,s,F)return R(u,{h,v;s,F},G,D)end return h end,function(u,G)local D=o(G)local h=function()return R(u,{},G,D)end return h end,function(u)E[u]=E[u]-(92173+-92172)if E[u]==-1038665+1038665 then E[u],C[u]=nil,nil end end,{},function(u,G)local D=o(G)local h=function(...)return R(u,{...},G,D)end return h end,{},function(u)local G,R=-703768+703769,u[263955-263954]while R do E[R],G=E[R]-(-365639+365640),G+(-351935+351936)if 794049-794049==E[R]then E[R],C[R]=nil,nil end R=u[G]end end,function(u,G)local D=o(G)local h=function(h)return R(u,{h},G,D)end return h end,function(u,G)local D=o(G)local h=function(h,v,s,F,S)return R(u,{h,v;s;F,S},G,D)end return h end,-688048-(-688048),function(R,h,v,s)local P,Y,q,x,z,f,S,E,M,A,j,m,n,g,L,w,b,H,T,l,K,Q,o,d,Z,V,c,e,I,U,y,i,X,r while R do if R<8405877-761276 then if R<-415454+4102194 then if R<434550+1760292 then if R<989074+544600 then if R<1317888-180664 then if R<-193896+1041809 then if R<908096-626779 then Y=466041+-466040 f=R q=M[Y]Y=false Z=q==Y i=Z R=Z and-367359+1837273 or 546053+623676 else m={}c=a()Z=nil P=G(882810+-918194)R=u[G(-356413+321039)]l={}T=a()w=nil V=nil g=nil C[c]=l z=nil l=a()j=t(-905347+3637851,{c;r;y,U})C[l]=j U=N(U)j={}L=G(884445-919827)M=G(-843790-(-808432))C[T]=j j=u[P]Q=C[T]x={[L]=Q;[M]=Z}P=j(m,x)b=nil o=P z=G(37102-72473)j=B(11067570-234763,{T,c;H,r;y,l})U=G(-188635-(-153291))b=u[U]I=nil I=5594996120210-233573 T=N(T)c=N(c)g=u[z]S={}l=N(l)H=N(H)r=N(r)d=j y=N(y)y=G(-335799+300429)r=d(y,I)w=o[r]r=G(803869-839222)r=g[r]z={r(g,w)}U=b(D(z))d=nil o=nil b=U()end else r=a()C[r]=S y=-199597+199600 R=C[z]I=-843067-(-843132)S=R(y,I)V=G(429580-464930)y=a()e=G(-797933+762557)l=p(499946+10466270,{})C[y]=S S=u[V]R=-844149-(-844149)I=R R=455310+-455310 H=R V={S(l)}S=-536394+536396 R={D(V)}V=R R=V[S]S=G(-922847+887501)l=R R=u[S]c=C[o]n=u[e]e=n(l)n=G(28030+-63377)A=c(e,n)c={A()}S=R(D(c))c=a()C[c]=S A=C[y]n=A R=6879575-571672 A=333077+-333076 S=-181615+181616 e=A A=-512254+512254 j=e<A A=S-e end else if R<995686-(-376792)then S=i R=f R=315748+7865373 else Y=947818-947816 R=-416600+1586329 q=M[Y]Y=C[Q]Z=q==Y i=Z end end else if R<-365417+2188831 then if R<192921+1507761 then y=G(-13489-21897)R=-557296+1450853 r=u[y]S=r else m=not P c=c+T l=c<=j l=m and l m=c>=j m=P and m l=m or l m=6003546-689493 R=l and m l=135943+5007251 R=R or l end else if R<-204147+2059562 then E=nil C[v[916627-916622]]=S R=8694550-(-871919)else R={}C[v[-228217+228219]]=R S=C[v[-307309+307312]]b=S U=35184371785136-(-303696)S=d%U C[v[926891+-926887]]=S z=-605699+605954 g=d%z z=-154379-(-154381)w=G(841531+-876908)y=887480-887479 U=g+z C[v[-493781-(-493786)]]=U z=u[w]I=y w=G(153765-189133)g=z[w]z=g(E)g=G(-183210-(-147850))w=847350-847349 o[d]=g y=-781769-(-781769)g=-984233+984403 R=944403+3354418 H=I<y r=z y=w-I end end end else if R<-675505+3671113 then if R<2782464-(-48896)then if R<2195826-(-602105)then if R<582277+1849647 then S={}R=u[G(-761322-(-725935))]else E=C[v[-174312+174313]]S=#E E=115620+-115620 R=S==E R=R and-666554+15909793 or 3754404-(-952436)end else S={}R=true C[v[984055-984054]]=R R=u[G(-803185+767821)]end else if R<873008+2009933 then d=C[v[-933387-(-933389)]]o=C[v[-13535+13538]]E=d==o S=E R=-1022479+17552073 else g=C[U]R=-808571+7632900 S=g end end else if R<-1043968+4207886 then if R<1009385+2070092 then n=I==H R=14014905-(-756868)A=n else z=not g o=o+U d=o<=b d=z and d z=o>=b z=g and z d=z or d z=-416817+10747572 R=d and z d=-255995+3821015 R=R or d end else if R<2766411-(-498219)then T=G(-815987+780609)e=G(-87258+51882)R=u[e]j=u[T]e=R(j)R=G(-798229+762850)u[R]=e R=9800398-801703 else R=C[v[-941382-(-941392)]]d=C[v[192689-192678]]E[R]=d R=C[v[-60000-(-60012)]]d={R(E)}R=u[G(-199374+164001)]S={D(d)}end end end end else if R<-1041656+7167403 then if R<5705198-286737 then if R<1016536+4273293 then if R<5090524-36204 then if R<1010996+3663102 then y=y+I V=not H w=y<=r w=V and w V=y>=r V=H and V w=V or w V=7323161-319788 R=w and V w=11979501-174123 R=R or w else o=G(-751029-(-715668))d=u[o]o=G(-533343-(-497955))E=d[o]o=C[v[-905855-(-905856)]]d={E(o)}S={D(d)}R=u[G(-1060929-(-1025578))]end else R=15593869-(-371601)c=#V j=879533-879533 l=c==j end else if R<4991716-(-325426)then l=c m=l V[l]=m R=2654907-870590 l=nil else c=#V j=312816-312816 l=c==j R=l and-297025+1144816 or-696257+16661727 end end else if R<938979+5086894 then if R<-992705+6500139 then R=16785835-754823 else i=C[d]S=i R=i and-288194+379689 or-618680+8799801 end else if R<5582022-(-479247)then n=C[d]R=n and-572850+3572566 or 548045+14223728 A=n else m=N(m)M=nil Q=N(Q)x=N(x)T=N(T)L=N(L)R=244493+6063410 P=N(P)end end end else if R<7917945-1020909 then if R<836035+5792701 then if R<404116+5822240 then if R<5639015-(-510265)then R=true R=10790618-1044464 else U=N(U)r=N(r)I=nil g=nil w=nil g=G(203113+-238455)z=N(z)c=N(c)y=N(y)l=nil o=N(o)c=-319423+319679 b=N(b)d=N(d)H=nil V=nil U=u[g]o=nil d=nil w=G(-221778-(-186417))g=G(79524+-114878)H=a()r=G(700351-735728)V={}b=U[g]z=G(192612+-227954)U=a()C[U]=b g=u[z]z=G(565969-601332)b=g[z]z=u[w]w=G(-692869-(-657481))y=a()g=z[w]w=u[r]r=G(163981+-199361)I={}z=w[r]r=a()w=-986918-(-986918)C[r]=w w=-989164-(-989166)C[y]=w w={}C[H]=I R=1722701-(-61616)l=248581+-248580 j=c I=811473-811473 c=612166-612165 T=c c=974948-974948 P=T<c c=l-T end else A=A+e T=not j S=A<=n S=T and S T=A>=n T=j and T S=T or S T=13287389-284168 R=S and T S=5297655-(-753378)R=R or S end else if R<5965976-(-854795)then S=G(556475-591842)E=G(59656+-95015)R=u[S]S=R(E)R=u[G(258070+-293435)]S={}else g=S H=G(-712589+677228)z=G(464296+-499638)S=u[z]z=G(870301+-905664)R=S[z]z=a()C[z]=R w=G(118285-153646)S=u[w]w=G(184648-220020)R=S[w]I=u[H]w=R r=I y=R R=I and 386339+16185753 or 487904+7972728 end end else if R<-724786+7977622 then if R<6535532-(-656149)then R=4085918-(-212903)e=G(988249-1023626)n=u[e]w=y e=G(-824629+789280)A=n[e]n=A(E,w)A=C[v[-888651-(-888657)]]e=A()c=n+e l=c+g c=-920471+920727 V=l%c g=V w=nil c=o[d]e=983253-983252 n=g+e A=b[n]l=c..A o[d]=l else o=-608324+11728278 d=G(-944737+909382)S=134245+6387262 E=d^o R=S-E S=G(211701+-247070)E=R R=S/E S={R}R=u[G(-507159-(-471797))]end else if R<-654550+8057281 then R=u[G(-118162-(-82787))]S={}else o=C[v[1045699-1045693]]R=985547+844439 d=o==E S=d end end end end end else if R<12485757-(-614632)then if R<10273621-703530 then if R<-165955+8541105 then if R<8215091-39272 then if R<8065999-223882 then if R<7692070-(-1037)then R=16151008-954151 else E=G(254651+-290029)S=G(273995+-309374)R=u[S]S=u[E]E=G(1020774+-1056152)u[E]=R E=G(213166+-248545)u[E]=S R=675958+14520899 E=C[v[114224+-114223]]d=E()end else R=true R=R and 768455+4738465 or 899540+8846614 end else if R<950134+7265112 then R=5099480-(-1023842)C[d]=S else R=6987547-806413 end end else if R<137578+8790007 then if R<995160+7886676 then S=r R=y R=r and 681741+211816 or-1006955+2592885 else C[d]=i Y=C[x]K=551222-551221 q=Y+K Z=M[q]f=I+Z Z=310623+-310367 R=f%Z q=C[m]Z=H+q I=R q=533857-533601 f=Z%q R=123224+6000098 H=f end else if R<-873893+10181467 then R=-84635+16115647 else R=C[v[859786-859779]]R=R and-544992+14579326 or 15706230-349044 end end end else if R<-659580+12025858 then if R<462311+10422661 then if R<-1034964+11421026 then if R<-587357+10648015 then R=B(-126609+7814880,{b})n={R()}S={D(n)}R=u[G(-462232-(-426875))]else r=-738481-(-738736)d=o w=-656347-(-656347)R=C[v[-480206-(-480207)]]z=R(w,r)R=2165285-(-975314)E[d]=z d=nil end else R=C[v[-270528-(-270529)]]d=h[-223110-(-223112)]E=h[-797493-(-797494)]o=R R=o[d]R=R and 308537+12308588 or 2203058-342879 end else if R<-963876+12030474 then d=G(-810246+774901)o=5099136-882559 E=d^o S=8822411-929563 R=S-E S=G(583213-618556)E=R R=S/E S={R}R=u[G(-497402-(-462019))]else d=C[v[112831+-112830]]U=-943819+943821 b=1016611+-1016610 o=d(b,U)d=722523+-722522 E=o==d R=E and 653310+15876284 or-1006818+3844537 S=E end end else if R<12524287-202182 then if R<-373506+12165781 then d=C[v[203999+-203996]]R=-803647+16881040 o=-739405+739532 E=d*o d=31925-31668 S=E%d C[v[166422+-166419]]=S else g=nil z=nil R=15208170-(-553814)b=nil end else if R<-657396+13401930 then R=-190657+15952641 else P=G(158985-194327)T=a()C[T]=A S=u[P]P=G(-1016852+981489)M=35211-35209 m=-660313+660413 R=S[P]P=822929+-822928 K=-888405-(-888405)S=R(P,m)m=674162+-674162 x=-373114+373369 P=a()C[P]=S R=C[z]S=R(m,x)m=a()C[m]=S Q=-464125+464126 x=701018-701017 X=-630657+640657 R=C[z]L=C[P]S=R(x,L)x=a()C[x]=S Z=G(-927230+891854)S=C[z]L=S(Q,M)M=G(-486299-(-450943))S=-336759+336760 R=L==S L=a()S=G(7684-43031)C[L]=R R=G(-1014442-(-979061))f=u[Z]q=C[z]Y={q(K,X)}R=l[R]Z=f(D(Y))f=G(401912-437268)i=Z..f Q=M..i R=R(l,S,Q)M=G(-793166-(-757816))Q=a()C[Q]=R S=u[M]i=k(-511813+11666126,{z,T;y;o,d;c;L,Q;P,x,m,r})M={S(i)}R={D(M)}M=R R=C[L]R=R and 873816+4793101 or-642036+14874651 end end end end else if R<16854229-928833 then if R<14216438-(-1022333)then if R<950558+13424659 then if R<14966382-821104 then if R<13339828-(-465496)then o=G(-150278-(-114901))R=true E=h d=a()C[d]=R S=u[o]b=a()o=G(293511-328877)z=G(312390+-347740)R=S[o]U=a()o=a()C[o]=R R=B(815325+5990218,{})C[b]=R w=W(3500837-674664,{U})R=false C[U]=R g=u[z]z=g(w)R=z and-445286+3439467 or 933038+5891291 S=z else E=G(379727-415094)o=-181667-(-181667)R=u[E]d=C[v[-662726-(-662734)]]E=R(d,o)R=15955735-598549 end else f=C[d]i=f R=f and-762547+16954350 or 7885431-(-1038586)end else if R<479220+14577602 then C[d]=A R=C[d]R=R and 9330472-1005161 or 7059920-919604 else R=true R=R and 7285791-(-425452)or 6852121-(-434711)end end else if R<300584+15139276 then if R<-578547+15867589 then o=711653+-711576 d=C[v[-920113-(-920115)]]E=d*o d=18314886536490-(-672805)S=E+d E=450569+35184371638263 R=S%E d=-743415+743416 C[v[755861+-755859]]=R E=C[v[35539+-35536]]S=E~=d R=11102423-(-681253)else R={}d=425518-425517 E=R o=C[v[-628303-(-628312)]]b=o o=655705-655704 U=o o=920654-920654 g=U<o o=d-U R=3571391-430792 end else if R<16828349-965630 then S={d}R=u[G(458827+-494212)]else S=G(-457301-(-421955))R=u[S]w=G(-377458-(-342108))r=t(7024308-(-223885),{})b=G(-289071+253695)E=C[v[-985692+985696]]o=u[b]z=u[w]w={z(r)}z=1006804+-1006802 g={D(w)}U=g[z]b=o(U)o=G(-110170-(-74823))d=E(b,o)E={d()}S=R(D(E))d=C[v[550069+-550064]]E=S S=d R=d and 7542487-88385 or 151399+1678587 end end end else if R<15640342-(-555966)then if R<-852098+16988558 then if R<237352+15824241 then if R<16896847-884992 then c=509564+-509563 j=#V l=b(c,j)c=g(V,l)j=C[H]R=5561285-241146 m=-455363-(-455364)l=nil P=c-m T=z(P)j[c]=T c=nil else R=true R=R and 660866+16101548 or 773954+1524593 end else d=C[v[603486+-603483]]o=708826+-708825 E=d~=o R=E and 15552435-(-943337)or 798112+10985564 end else if R<15693399-(-497950)then j=G(284909+-320288)R=u[j]j=G(-617368-(-581990))u[j]=R R=8013989-(-984706)else Z=-569221+569222 f=M[Z]R=8279796-(-644221)i=f end end else if R<16885928-327457 then if R<16342805-(-155538)then r=-734731-(-734733)o=-815526-(-815558)d=C[v[-793817-(-793820)]]E=d%o b=C[v[870323+-870319]]I=391793-391780 z=C[v[-254990+254992]]l=C[v[711600+-711597]]V=l-E l=399938+-399906 H=V/l y=I-H w=r^y g=z/w U=b(g)b=4295640684-673388 o=U%b U=-818015+818017 b=U^E w=-6197-(-6198)d=o/b b=C[v[567309+-567305]]r=-447773-(-448029)z=d%w w=4294043206-(-924090)g=z*w U=b(g)b=C[v[-491491-(-491495)]]z=1034972-969436 g=b(d)o=U+g U=-935398-(-1000934)E=nil b=o%U g=o-b U=g/z o=nil d=nil z=-912972-(-913228)g=b%z w=b-g R=4095718-(-611122)z=w/r r=754213+-753957 w=U%r y=U-w U=nil I=603721+-603465 b=nil r=y/I y={g;z,w,r}z=nil w=nil r=nil C[v[337761+-337760]]=y g=nil else R=S and 16122806-247658 or-320918+9887387 end else if R<-496880+17187698 then V=G(164056-199417)H=u[V]V=G(455504+-490890)I=H[V]R=-801084+9261716 r=I else j=80955-80949 R=C[z]e=612825-612824 n=R(e,j)R=G(923029-958408)u[R]=n j=G(-71101+35722)e=u[j]j=35358-35356 R=e>j R=R and 4223521-1034548 or 15713183-(-477339)end end end end end end end R=#s return D(S)end,function(u)for G=805734-805733,#u,628293+-628292 do E[u[G]]=(-234595+234596)+E[u[G]]end if h then local R=h(true)local D=s(R)D[G(-345242+309860)],D[G(42618-77966)],D[G(326281-361633)]=u,b,function()return-16832+-964615 end return R else return v({},{[G(238776-274124)]=b,[G(-702880+667498)]=u;[G(796462+-831814)]=function()return-164990+-816457 end})end end,function()d=d+(567362-567361)E[d]=944393+-944392 return d end return(U(13310200-(-484271),{}))(D(S))end)(getfenv and getfenv()or _ENV,unpack or table[G(-132185+96799)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
