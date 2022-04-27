Type.registerNamespace("CommonUI");CommonUI.L=function(){};CommonUI.L.registerInterface("CommonUI.L");CommonUI.I=function(){};CommonUI.t=function(n,t,i,r){this.g=[];this.h=r||new CommonUI.u(n,t,this);this.m(i)};CommonUI.t.prototype={j:!1,k:!1,i:null,h:null,m:function(n){var i,t;if(n)for(this.i={},i=n.a(),t=0;t<i.length;t++)this.i[CommonUI.f.toString(i[t])]=t},dispose:function(){this.h.dispose();System.a.b(this.g);this.g=null},d:function(){return this.h.d()},e:function(){return this.k},f:function(n){return this.k=n,n},b:function(n){for(var t=0;t<this.g.length;t++)if(this.g[t].c()===n)return!0;return!1},c:function(n,t,i,r,u){n.k(this);var f=this.l(n.c());t&&!this.i&&(f=0);f<2&&(this.h.b(n,f),this.g.length>=2&&this.h.a(this.g[1]),this.h.c());Array.insert(this.g,f,n);Diag.a.a(38111390,207,50,"Add BusinessBar Entry. Id: {0}, ContainerID: {1}.",CommonUI.f.toString(n.c()),isNullOrUndefined(n.h())?"":n.h());n.i()&&Common.a.ba(n.i(),i,r,u)},a:function(n){var t=Array.indexOf(this.g,n);t!==-1&&t<2&&(this.g.length>2&&this.h.b(this.g[2],2),this.h.a(n),this.h.c());Array.remove(this.g,n);n.k(null);n.dispose()},l:function(n){var i,t;if(!this.i||!n||(i=this.i[CommonUI.f.toString(n)],isNullOrUndefined(i)))return this.g.length;for(t=0;t<this.g.length;t++)if(i<this.i[CommonUI.f.toString(this.g[t].c())])return t;return this.g.length}};CommonUI.i=function(){};CommonUI.i.d=function(n,t,i,r){var f=Common.p.a(n.style.top),u;Common.C.b(n,"Shared_BasicClass");u=new Common.bX(n);u.c(f,t);Common.C.a(u,i,r)};CommonUI.i.a=function(n,t,i,r){var e,o,f,u,s;for(Common.C.b(n,"Shared_BasicClass"),e=new Common.ca(n),e.b(0,1),Common.C.a(e,null,null),o=new Common.bX(n),o.c(n.clientTop-30,n.clientTop),Common.C.a(o,null,r),f=i+1;f<t.length;f++)u=t[f],Common.C.b(u,"Shared_BasicClass"),s=new Common.bX(u),s.c(u.clientTop-n.clientHeight,u.clientTop),Common.C.a(s,null,null)};CommonUI.i.c=function(n,t,i,r){var o,f,u,e,s;for(Common.C.b(n,"Shared_BasicClass"),o=new Common.cX(n),o.b(1,0),Common.C.a(o,i,r),f=!1,u=0;u<t.length;u++)f&&(e=t[u],Common.C.b(e,"Shared_BasicClass"),s=new Common.bX(e),s.c(e.clientTop,-n.clientHeight),Common.C.a(s,null,CommonUI.i.b)),f||t[u]!==n||(f=!0)};CommonUI.i.b=function(n){n.a().style.top=""};CommonUI.u=function(n,t,i){this.n=Function.createDelegate(this,this.v);this.q=Function.createDelegate(this,this.y);this.o=Function.createDelegate(this,this.w);this.p=Function.createDelegate(this,this.x);this.f=n;this.m=t;this.h=i;var r=n.ownerDocument;this.e=r.createElement("div");this.e.className="WACBusinessBar";this.k=!!Common.a.b()&&Common.a.b().a().ba();this.k&&!this.h.j&&Sys.UI.DomElement.addCssClass(this.e,"regionComposer");this.e.id="WACBusinessBar";Common.c.b()&&Sys.UI.DomElement.addCssClass(this.e,"FireFox")};CommonUI.u.prototype={h:null,j:!1,f:null,m:0,g:0,l:null,i:null,k:!1,e:null,d:function(){return this.e},s:function(n){return this.j===n?n:(this.j=n,n?this.u():this.r(),n)},dispose:function(){this.j&&this.r();Common.p.i(this.e);this.e=null;this.f=null},b:function(n,t){var i=n.b()||n.n();t===this.e.childNodes.length?this.e.appendChild(i):this.e.insertBefore(i,this.e.childNodes[t]);n.j();this.g+=n.b().clientHeight;CommonUI.i.a(i,this.e.childNodes,t,this.p);n.q();this.s(!0)},a:function(n){var t=n.b(),i;Common.p.E(t)&&(this.g-=n.b().clientHeight,i=t.parentNode,CommonUI.i.c(t,i.children,null,this.o))},x:function(n){n.a().style.top="";Common.a.b().D()},w:function(n){var t=n.a().parentNode;t.removeChild(n.a());this.e.hasChildNodes()||this.s(!1);Common.a.b().D()},u:function(){var f,t,i,e,n,o,r,u,h,s;this.f.style.top.trim()===""&&(this.f.style.top=this.f.offsetTop+"px");this.e.style.left=this.f.style.left;this.e.style.top=this.f.style.top;this.e.style.height="auto";this.e.style.visibility="visible";f=Sys.UI.DomElement.getBounds(this.e);this.l=this.f.style.top;this.g=f.height;this.c();Common.a.b().q(this.q);Common.m.b(this.e,"selectstart",Common.m.f);this.i=this.n;Common.a.b().o().a(this.e,this.i,null);Common.q.c()&&(t=Common.q.a(),i=t.a("businessBar"),i.d="main",e=this,n=new Common.Y(function(){return e.e}),n.i(1),n.i(2),n.i(8),o=this,t.e(function(){return o.e},i,n),r=t.h("businessBar"),r.i(),r.b=!0,r.c=!0,u=Common.a.b().h(),h=this,i.j(function(){u.c("businessBar")}),u.a("businessBar"),s=n.d(),(s||Common.a.a.a("ReactBusinessBarIsEnabled"))&&u.b("businessBar"))},r:function(){if(this.t()&&(this.f.style.top=this.l),this.e.style.visibility="hidden",Common.a.b()){if(Common.q.c()){var n=Common.q.a();n.k("businessBar")}this.i&&(Common.a.b().o().c(this.e,this.i),this.i=null)}Common.m.c(this.e,"selectstart",Common.m.f)},c:function(){this.t()&&this.j&&CommonUI.i.d(this.f,this.g+this.m,null,null)},t:function(){return!this.k&&!this.h.j},y:function(){for(var i=this.h.g.length,r=Sys.UI.DomElement.getBounds(this.e).height,n,t=0;t<i;++t)n=this.h.g[t],n.b()&&n.j();this.g=Sys.UI.DomElement.getBounds(this.e).height;r!==this.g&&this.c()},v:function(){return!0}};CommonUI.h=function(n,t,i){this.bi=Function.createDelegate(this,this.bJ);this.bh=Function.createDelegate(this,this.bI);this.bg=Function.createDelegate(this,this.bG);this.bj=Function.createDelegate(this,this.bK);this.bf=Function.createDelegate(this,this.bF);this.be=Function.createDelegate(this,this.bC);this.bd=Function.createDelegate(this,this.bA);this.bs=Function.createDelegate(this,this.bL);this.P=Function.createDelegate(this,this.bH);this.bN(n);this.bM(t);this.J=i;this.R=0;this.f(1);this.ba=!0;this.bm=5};CommonUI.h.prototype={B:null,H:null,C:!1,ba:!1,bm:0,bp:"",Q:0,A:null,y:null,t:null,s:null,K:null,L:null,M:null,N:null,E:null,v:null,x:null,u:null,Y:null,F:!1,G:!1,U:"",bn:"",S:!1,X:"",bo:"",V:!1,T:null,W:null,O:!1,bb:"",bq:"",D:null,bu:!1,Z:!1,bv:null,z:null,k:function(n){return this.z=n,n},R:0,c:function(){return this.R},d:function(n){return this.R=n,n},r:null,b:function(){return this.r},p:function(n){return this.ba=n,n},bN:function(n){return this.B!==n&&(this.B=n,this.y&&(this.y.innerText=this.B)),n},bM:function(n){return this.H!==n&&(this.H=n,this.t&&(this.t.innerText=this.H)),n},J:null,f:function(n){return this.Q=n,this.Q!==4&&(this.bl=""),n},bl:null,bk:null,g:function(){return this.bk},o:function(n){return this.bk=n,n},e:function(n){return this.C!==n&&(this.C=n,this.x&&(this.x.style.display=this.C?"table-cell":"none")),n},by:function(){return Common.a.a.a("ReactBusinessBarIsEnabled")},I:null,h:function(){return this.I},bt:0,i:function(){return this.bt},a:function(n,t,i,r){this.U=n;this.T=t;this.F=!0;this.bn=i;this.S=r},m:function(n,t,i,r){this.X=n;this.W=t;this.G=!0;this.bo=i;this.V=r},l:function(n,t){this.bb=n;this.D=t;this.O=!0},bE:function(){this.r=document.createElement("div");this.r.className=String.format("{0} {1}","WACBusinessBarEntry","ReactBusinessBarEntry");this.r.setAttribute("UNSELECTABLE","on");isNullOrUndefined(this.I)||(this.r.id=this.I);var t=this,n=this;return Common.App.AppLifecycleManager.get_instance().a(7,function(){Common.UISurfaces.m().then(function(i){var u,r,f,e;return n.z.e()||(i.initializeMessageBarInStore(),n.z.f(!0)),r=(u=new Common.fX,u.message=n.H,u.messageTitle=n.B,u.isMultiline=n.ba,u.messageBarType=n.bm,u),n.C&&(r.closeable=!0,f=n.H+". "+$a.b,n.B&&(f=n.B+". "+f),r.dismissButtonAriaLabel=f,r.onDismiss=function(){n.br(t)}),n.O&&(r.linkProps={type:"AppLinkProps",text:n.bb,handler:{href:n.bq,target:"_blank"}},n.D&&(e=n.bs,r.linkProps.handler=e)),n.F&&(r.firstActionButtonProps=new Common.fp(n.U,function(){n.bB(t)})),n.G&&(r.secondActionButtonProps=new Common.fp(n.X,function(){n.bD(t)})),i.createNewMessageBarWithCallback?i.createNewMessageBarWithCallback(n.r,r,function(){Common.a.b().D()}):i.createNewMessageBar(n.r,r),n.bv=i,null}).catch(function(){return Diag.a.a(595096981,324,10,"Failed to load React Message Bar API"),null})},3),this.r},n:function(){var n,t,i,r;if(Common.a.G("Microsoft.Office.Web.SessionSettings.IWacWordReactBusinessBarSettings"),this.by())return this.bE();if(this.r=document.createElement("div"),this.r.className="WACBusinessBarEntry",this.r.setAttribute("UNSELECTABLE","on"),isNullOrUndefined(this.I)||(this.r.id=this.I),this.A=null,this.Q){this.A=document.createElement("span");this.A.className="WACBusinessBarIcon";this.r.appendChild(this.A);n=null;t=null;switch(this.Q){case 2:n="CancelRequest_24x24x32";t=$a.f;break;case 1:n="Risks_24x24x32";t=$a.u;break;case 3:n="Info_24x24x32";t=$a.g;break;case 4:n=this.bl;t=this.bp}this.A.title=t;this.A.setAttribute("role","img");this.A.appendChild(Common.P.a(24,24,n,"WACBusinessBarImage",!0,""))}return i=Common.u.a().a,this.s=document.createElement("div"),this.s.id="BBTitleAndBody"+i,this.s.className="WACBusinessBarTitleBodyHolder",this.s.tabIndex=0,this.s.setAttribute("role","group"),this.B&&(this.y=document.createElement("p"),this.y.innerText=this.B,this.y.className="WACBusinessBarTitle UIFontBold",this.y.id="BBTitle"+i,this.y.setAttribute("UNSELECTABLE","on"),this.s.setAttribute("aria-labelledby",this.y.id),this.s.appendChild(this.y)),this.t=document.createElement("p"),this.t.className="WACBusinessBarBody",this.t.innerText=this.H,this.t.id="BBBody"+i,this.t.setAttribute("UNSELECTABLE","on"),this.t.style.width="100%",this.s.setAttribute("aria-describedby",this.t.id),this.F&&this.bw(this.t,this.bn),this.G&&this.bw(this.t,this.bo),this.s.appendChild(this.t),r=document.createElement("div"),r.setAttribute("role","alert"),r.appendChild(this.s),this.r.appendChild(r),this.F&&(this.L=document.createElement("span"),this.K=document.createElement("button"),this.bx(this.L,this.K,this.U,this.bd)),this.G&&(this.N=document.createElement("span"),this.M=document.createElement("button"),this.bx(this.N,this.M,this.X,this.be)),this.O&&(this.E=document.createElement("span"),this.E.className="WACBusinessBarLinkHolder",this.v=document.createElement("a"),this.v.className="WACBusinessBarLink",this.v.innerText=this.bb,this.D?(this.v.tabIndex=0,Common.a.b().e().f("click",this.v,this.bf,this),Common.a.b().f().h("keyup",this.v,this.bj,this)):(this.v.href=this.bq,this.v.target="_blank"),this.E.appendChild(this.v),this.r.appendChild(this.E)),Common.a.b().e().a("click",this.r,this.P),Common.a.b().f().h("keyup",this.s,this.bg,this),this.bu&&!this.Z&&(Common.a.b().o().a(this.r,this.P,null),this.Z=!0),this.C&&(this.x=document.createElement("span"),this.x.className="WACBusinessBarCloseHolder",this.u=document.createElement("a"),this.u.className="WACBusinessBarClose",this.u.tabIndex=0,this.u.title=$a.b,this.u.setAttribute("role","button"),this.Y=Common.P.a(16,16,"BusinessBarClose_16x16x32","",!0,""),this.u.appendChild(this.Y),this.x.style.display="table-cell",this.x.appendChild(this.u),this.r.appendChild(this.x),Common.a.b().e().f("click",this.u,this.bh,this),Common.a.b().f().h("keyup",this.u,this.bi,this)),this.r},q:function(){this.s&&this.s.setAttribute("aria-hidden","false")},bw:function(n,t){if(t&&t!==""){var i;i=document.createElement("span");i.className="WACScreenReaderOnly";i.innerText=t;n.appendChild(i)}},bx:function(n,t,i,r){n.className="WACBusinessBarButtonHolder";t.setAttribute("type","button");t.className="WACBusinessBarButton";t.innerText=i;n.appendChild(t);this.r.appendChild(n);Common.a.b().e().f("click",t,r,this)},j:function(){if(!this.by()){this.s.style.whiteSpace="nowrap";this.C?this.x.style.width="auto":this.O?this.E.style.width="auto":this.G?this.N.style.width="auto":this.F?this.L.style.width="auto":this.s.style.width="auto";var n=this.r.clientWidth,t=this.z.d().clientWidth;n>t?this.s.style.whiteSpace="normal":this.C?this.x.style.width="100%":this.O?this.E.style.width="100%":this.G?this.N.style.width="100%":this.F?this.L.style.width="100%":this.s.style.width="100%"}},bO:function(n,t){if(Common.J.c()){var i={};i.WacSessionId=Common.a.j;i.ActionName="BusinessBar"+n;i.InputMethod=t;Diag.a.a(35489761,207,50,JSON.stringify(i))}},w:function(n,t,i,r){(this.bO(n,i),Common.J.b(null))&&Common.A.b(t,!0,"",r,10,0,null)},bA:function(n){return this.T(n.g),this.w("ButtonOne",954512041,"Mouse",2),this.S&&(this.w("Close",3484823337,"Mouse_ButtonOne",2),this.bc(n)),!0},bB:function(n){return this.T(n),this.w("ButtonOne",954512041,"Mouse",2),this.S&&(this.w("Close",3484823337,"Mouse_ButtonOne",2),this.br(n)),!0},bC:function(n){return this.W(n.g),this.w("ButtonTwo",1404592381,"Mouse",2),this.V&&(this.w("Close",3484823337,"Mouse_ButtonTwo",2),this.bc(n)),!0},bD:function(n){return this.W(n),this.w("ButtonTwo",1404592381,"Mouse",2),this.V&&(this.w("Close",3484823337,"Mouse_ButtonTwo",2),this.br(n)),!0},bF:function(n){return this.D(n.g),this.w("Link",2119511063,"Mouse",2),!0},bL:function(){this.D(null)},bK:function(n){return n.a.keyCode===13&&!n.a.altKey?(this.D(n.g),this.w("Link",2119511063,"Keyboard",1),!0):!1},bG:function(n){return n.a.keyCode===13&&!n.a.altKey&&this.J?(this.J(n.g,n),this.w("Invoke",3786550719,"Keyboard",1),!0):!1},dispose:function(){this.r&&(Common.a.b().e().b("click",this.r,this.P),this.Z&&Common.a.b().o().c(this.r,this.P));this.u&&(Common.a.b().e().b("click",this.u,this.bh),Common.a.b().f().b("keyup",this.u,this.bi));this.K&&Common.a.b().e().b("click",this.K,this.bd);this.M&&Common.a.b().e().b("click",this.M,this.be);this.v&&this.D&&(Common.a.b().e().b("click",this.v,this.bf),Common.a.b().f().b("keyup",this.v,this.bj));this.s&&Common.a.b().f().b("keyup",this.s,this.bg);this.bp=null;this.A=null;this.y=null;this.r=null;this.t=null;this.s=null;this.K=null;this.L=null;this.M=null;this.N=null;this.v=null;this.E=null;this.Y=null;this.x=null;this.u=null;this.z=null},bH:function(n){return this.w("Invoke",3786550719,"Mouse",2),!!this.J&&this.J(this,n)},bI:function(n){return this.w("Close",3484823337,"Mouse",2),this.bc(n),!0},bJ:function(n){return n.a.keyCode===13&&!n.a.altKey?(this.w("Close",3484823337,"Keyboard",1),this.bc(n),!0):!1},bc:function(n){var t=n.g;this.z.a(t);this.bz(t,n.b)},bz:function(n,t){if(n.g()){var i=Common.a.c();i.j=10;i.k=t;n.g()(n);i.j=0;i.k=0}},br:function(n){n&&this.z&&(this.z.a(n),this.bz(n,0))}};CommonUI.G=function(n,t,i,r){this.C=Function.createDelegate(this,this.a);this.O=Function.createDelegate(this,this.S);CommonUI.G.initializeBase(this,[document.createElement("div")]);this.G=n;this.F=t;this.E=i;this.D=r;this.u=t.ownerDocument;this.o=!1;this.V(!1);this.f(!1)};CommonUI.G.prototype={G:null,F:null,u:null,E:null,r:null,s:null,i:null,t:null,j:null,l:null,x:null,o:!1,v:!1,y:!1,A:null,J:null,e:function(n){return this.J=n,n},n:function(){return this.r||(this.r=this.u.createElement("div"),this.r.id=this.z("WACCalloutOuter"),this.r.className="WACCalloutOuter",this.r.setAttribute("role","dialog"),this.r.style.width=this.m+"px"),this.r},H:function(){var n,t;return this.s||(this.s=this.u.createElement("div"),this.s.id=this.z("WACCalloutBeakContainer"),this.s.className="WACCalloutBeakContainer",n="CalloutBeakTopFilled_32x16x32",(this.k===5||this.k===6||this.k===4)&&(n="CalloutBeakBottomFilled_32x16x32"),t=Common.P.a(32,16,n,"WACCalloutBeak",!0,""),this.s.appendChild(t)),this.s},m:0,c:function(){return this.m},b:function(){return this.o},g:function(n){return this.A===n?n:(this.A=n,this.l&&(this.l.innerText=this.A),n)},I:null,k:0,d:function(n){return this.k=n,n},V:function(n){return this.v===n?n:(this.v=n,this.i&&(this.i.contains(this.j)&&!this.v?this.i.removeChild(this.j):!this.i.contains(this.j)&&this.v&&this.P()),n)},f:function(n){return this.y===n?n:(this.y=n,this.i&&(this.i.contains(this.l)&&!this.y?this.i.removeChild(this.l):!this.i.contains(this.l)&&this.y&&this.Q()),n)},D:null,K:null,h:function(){this.o||(this.T(),this.R(),this.F.appendChild(this.n()),this.n().style.display="Block",this.W(),this.o=!0,this.K&&this.K())},a:function(){this.o&&(this.U(),this.F.removeChild(this.n()),this.o=!1,this.D&&this.D())},dispose:function(){this.a();this.r=null;this.i=null;this.s=null;this.t=null;this.j=null;this.l=null;Sys.Component.prototype.dispose.call(this)},z:function(n){return this.get_element().id+n},T:function(){this.i=this.u.createElement("div");this.i.id=this.z("WACCalloutHeader");this.i.className="WACCalloutHeader";this.v&&this.P();this.y&&this.Q();this.t=this.u.createElement("div");this.t.id=this.z("WACCalloutContent");this.t.className="WACCalloutContent";this.t.style.width=this.m>190?this.m-26+"px":"164px";this.t.appendChild(this.J);this.n().appendChild(this.H());this.n().appendChild(this.i);this.n().appendChild(this.t)},P:function(){this.j=this.u.createElement("a");this.j.className="WACCalloutCloseAnchor";this.j.id=this.z("WACCalloutCloseAnchor");this.j.href="#";this.i.appendChild(this.j);var n=Common.P.a(16,16,"ClosePaneGlyph_16x16x32","WACCalloutCloseIcon",!0,$a.b);this.j.appendChild(n)},Q:function(){this.l=this.u.createElement("div");this.l.className="WACCalloutTitle UIFontBold";this.l.style.width=this.m>190?this.m-30+"px":"160px";this.l.id=this.z("WACCalloutTitle");this.l.innerText=this.A;this.i.contains(this.j)?this.i.insertBefore(this.l,this.j):this.i.appendChild(this.l)},W:function(){var t=this.G,i,r,u,n,e,f;this.k===1?(i=this.I.y+16,r=-16):this.k!==2&&this.k!==3&&this.k?(i=t.y-this.n().clientHeight-17,r=this.n().clientHeight-1):(i=t.y+t.height+15,r=-15);this.n().style.top=i+"px";this.H().style.top=r+"px";this.k===1?(n=this.I.x-16,this.n().style.left="50%",this.n().style.marginLeft=-this.m/2+"px",e=Sys.UI.DomElement.getBounds(this.n()),this.H().style.left=n-e.x+"px"):(f=t.x+this.G.width/2,this.k===2||this.k===5?(n=20,u=f-36):this.k&&this.k!==4?(n=this.m-52,u=f-this.m+36):(n=this.m/2-16,u=f-this.m/2),this.n().style.left=u+"px",this.H().style.left=n+"px")},R:function(){this.v&&!this.x&&(this.x=this.O,this.E.a("click",this.j,this.x,null))},U:function(){this.v&&this.x&&(this.E.b("click",this.j,this.x),this.x=null)},S:function(){return this.a(),!0}};CommonUI.a=function(){};CommonUI.a.a=function(n,t,i){var r=document.createElement(n);return t&&(r.id=t),i&&(r.className=i),r};CommonUI.a.b=function(n,t,i){var r=CommonUI.a.a(n,t,i);return r.setAttribute("Unselectable","on"),r};CommonUI.w=function(){};CommonUI.w.a=function(n,t,i,r,u){return Common.a.b().a().h()?new CommonUI.B(n,t,i,r,Common.a.b(),u):new CommonUI.o(n,t,i,r,Common.a.b(),u)};CommonUI.o=function(n,t,i,r,u,f){this.L=Function.createDelegate(this,this.Y);CommonUI.o.initializeBase(this,[n,i,u.i(),f]);this.m=this.X(r);this.w=t;this.p=u;this.M=7;this.q=this.w.ownerDocument.createElement("div");this.q.className="ModalCalloutControlOverlay";this.q.tabIndex=0;this.w.insertBefore(this.q,this.w.firstChild)};CommonUI.o.prototype={p:null,w:null,q:null,N:0,M:0,h:function(){this.o||(this.p.y(),this.p.s(!1),this.q.style.zIndex=this.p.l(),CommonUI.G.prototype.h.call(this),this.Z(),this.N=window.setTimeout(this.C,this.M*1e3))},a:function(){this.o&&(this.p.t(!1),this.ba(),this.w&&this.w.contains(this.q)&&this.w.removeChild(this.q),CommonUI.G.prototype.a.call(this),window.clearTimeout(this.N))},Z:function(){this.p.q(this.C);this.p.e().a("click",this.q,this.L)},ba:function(){this.p.v(this.C);this.p.e().b("click",this.q,this.L)},Y:function(){return this.a(),!0},X:function(n){var t=0;switch(n){case 0:t=190;break;case 1:t=250;break;case 2:t=300;break;case 3:t=360}return t}};CommonUI.B=function(n,t,i,r,u,f){CommonUI.B.initializeBase(this,[n,t,i,r,u,f])};CommonUI.B.prototype={B:null,h:function(){if(!this.o){var n,t=this,i=(n=new Common.dw,n.onShow=function(){CommonUI.o.prototype.h.call(t)},n),r=this,u=this;Common.UISurfaces.b().then(function(n){var t=n.externalNotification();return r.B=n.addNotification(t,i),null},function(n){return Diag.a.a(593352345,383,15,"Failed to GetNotificationsAPIAsync: {0}",n),null})}},a:function(){if(this.o&&this.B){var n=this,t=this;Common.UISurfaces.b().then(function(t){return t.removeNotification(n.B),n.B=null,null},function(n){return Diag.a.a(593352344,383,15,"Failed to GetNotificationsAPIAsync: {0}",n),null});CommonUI.o.prototype.a.call(this)}}};CommonUI.e=function(){};CommonUI.e.a=function(n,t,i,r,u){var s=u?"":i,f=CommonUI.a.a("a",n,"StandardButton "+t),e,o;return f.title=s,f.tabIndex=0,e=null,r?(e=Common.P.a(16,16,r,"StandardButtonImage",!0,null),e.setAttribute("role","presentation"),f.appendChild(e)):Sys.UI.DomElement.addCssClass(f,"StandardButtonNoImage"),u?(o=CommonUI.a.a("span",null,"StandardButtonLabel"),o.innerText=i,f.appendChild(o)):Sys.UI.DomElement.addCssClass(e,"StandardButtonImageNoText"),f.setAttribute("role","button"),f};CommonUI.e.b=function(n,t){if(!isNullOrUndefined(n)){n.disabled=!t;var i;t?(i="false",Sys.UI.DomElement.removeCssClass(n,"DisabledButton"),Sys.UI.DomElement.removeCssClass(n,"cui-disabled")):(i="true",Sys.UI.DomElement.containsCssClass(n,"DisabledButton")||Sys.UI.DomElement.addCssClass(n,"DisabledButton"),Sys.UI.DomElement.containsCssClass(n,"cui-disabled")||Sys.UI.DomElement.addCssClass(n,"cui-disabled"));Common.K.a(n,"aria-disabled",i)}};CommonUI.e.prototype={dispose:function(){}};CommonUI.t.registerClass("CommonUI.t",null,CommonUI.H,Sys.IDisposable,CommonUI.Q);CommonUI.h.registerClass("CommonUI.h",null,CommonUI.J,Sys.IDisposable);CommonUI.G.registerClass("CommonUI.G",Sys.UI.Control,CommonUI.L);CommonUI.o.registerClass("CommonUI.o",CommonUI.G);CommonUI.B.registerClass("CommonUI.B",CommonUI.o);CommonUI.e.registerClass("CommonUI.e",null,Sys.IDisposable);Type.registerNamespace("_Ewa");_Ewa.HQ=function(){_Ewa.HQ.initializeBase(this);this.l()};_Ewa.HQ.prototype={a:function(){this.k(new CommonUI.e)}};_Ewa.HQ.registerClass("_Ewa.HQ",_Ewa.sX.$$(Sys.IDisposable));Type.registerNamespace("_Ewa");_Ewa.beZ=function(){};_Ewa.beZ.a=function(){_Ewa.m.a(function(n){n.a().b(_Ewa.bkq.$$(Sys.IDisposable),203,new _Ewa.HQ)})};_Ewa.beZ.a();