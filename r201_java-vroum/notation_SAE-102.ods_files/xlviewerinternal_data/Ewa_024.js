Type.registerNamespace("Common.App.SaveStatus");Common.App.SaveStatus.e=function(){this.h=Function.createDelegate(this,this.i)};Common.App.SaveStatus.e.prototype={d:null,g:null,e:null,f:null,a:function(){return"Common.App.SaveStatus"},c:function(n){var t,r,i;this.d=n;Common.a.a.a("PostMessageEmbedded")&&Common.a.C?(t=this,this.d.c(Common.App.SaveStatus.c,null).c(Common.App.SaveStatus.a,null).a().b(function(){return new Common.App.SaveStatus.c(t.d.b(Common.App.HostNotification.b,null),t.d.b(Common.T,null))})):Common.a.b().a().bc()||(Common.a.b().a().c()?(r=this,this.d.c(Common.App.SaveStatus.b,null).c(Common.App.SaveStatus.a,null).a().b(function(){return new Common.App.SaveStatus.b(r.d.b(Common.App.HostNotification.b,null))})):(i=this,this.d.c(Common.App.SaveStatus.d,null).c(Common.App.SaveStatus.a,null).a().b(function(){return new Common.App.SaveStatus.d(Common.O.a(),i.d.b(Common.dX,null),i.d.b(Common.App.HostNotification.b,null),Common.a.h)})))},b:function(){Common.a.a.k(this.h)},i:function(){var n=Common.a.a,i=!!Common.a.b().a()&&Common.a.b().a().a()===4,t;(n.a("WordEditorAutoSaveImprovementIsEnabled")||n.a("PptEditorSaveStatusInHeaderEnabled")||i&&n.a("SimplifiedReactRibbonUxIsEnabled")||n.a("ExcelSaveStatusInHeaderEnabled")||n.a("VisioSaveStatusInHeaderEnabled"))&&(Common.a.a.a("PostMessageEmbedded")&&Common.a.C?(this.f=this.d.a(Common.App.SaveStatus.c,null),this.f&&this.f.o()):Common.a.b().a().bc()||(Common.a.b().a().c()?(this.e=this.d.a(Common.App.SaveStatus.b,null),this.e&&(t=n.a("AlwaysHideHostNameInSaveStatus"),this.e.w(n.a("IsSkyDrive")&&!t,t?null:n.b("HostNameToIncludeInSavedStatus"),Common.a.a))):(this.g=this.d.a(Common.App.SaveStatus.d,null),this.g&&this.g.A(n.a("IsSkyDrive"),n.b("HostNameToIncludeInSavedStatus")))))}};Common.App.SaveStatus.f=function(){};Common.App.SaveStatus.f.a=function(){Common.App.a.a().a(new Common.App.SaveStatus.e,0,!1)};Common.App.SaveStatus.c=function(n,t){this.i=Function.createDelegate(this,this.p);this.l=$a.T;this.m=$a.U;this.j=$a.P;this.k=$a.R;this.g=t;this.e=n;this.f=3;this.c=!0};Common.App.SaveStatus.c.prototype={d:null,g:null,e:null,c:!1,f:0,o:function(){var n,t;this.e&&(n=this,this.e.a(function(t){t.b(n.i)}));t=this;this.g.a(function(n){t.d=n})},a:function(n,t){this.f=t;t===3?this.b(this.c):t===2?this.h(this.k):this.h(this.j)},p:function(){this.b(!1)},b:function(n){this.c=n;var t=this.c?this.l:this.m;this.h(t)},h:function(n){this.d&&this.d.a("UI_SaveStatus",this.n(n),"")},n:function(n){var t={};return t.StatusText=n,t}};Common.App.SaveStatus.d=function(n,t,i,r){this.w=Function.createDelegate(this,this.F);this.v=Function.createDelegate(this,this.C);this.u=Function.createDelegate(this,this.x);this.t=n;this.o=t;this.n=i;this.q=r;this.p=!0;this.e=!1;this.d=3;this.h=!0};Common.App.SaveStatus.d.prototype={t:null,o:null,n:null,k:null,l:null,i:null,j:null,p:!1,q:!1,e:!1,d:0,h:!1,g:0,s:null,m:null,f:null,r:null,c:null,A:function(n,t){return this.t?(this.k=this.z(n,t),this.l=$a.U,this.i=$a.P,this.j=$a.R,this.B(),!0):!1},z:function(n,t){return n?String.format($a.A,$a.M):t&&t.length?String.format($a.A,t):$a.T},B:function(){var n,t;this.o&&(n=this,this.o.a(function(t){t.f(n.u);t.e(n.v);t.b&&n.x(null,null)}));this.n&&(t=this,this.n.a(function(n){n.b(t.w)}))},C:function(n,t){this.a(t==="true",this.d)},a:function(n,t){this.e=n;this.d=t;this.m&&(this.m.style.display=this.e||this.d===3||!this.s?"none":"");this.f&&(this.f.style.display=this.e||this.d===3?"none":"",this.f.innerText=this.d===1?this.i:this.j,this.f.title=this.d===1?$a.lB:$a.lM);this.r&&(this.r.style.display=this.e||this.d===1||!this.s&&!this.f?"none":"");this.c&&(this.c.style.display=this.e||this.d===1?"none":"",this.b(this.h),this.c.title=$a.lT)},x:function(n,t){var i=document.getElementById(Common.B.l),r=t,u=t?r.a:!1;!u&&i&&this.k!==""&&this.l!==""&&this.i!==""&&this.j!==""&&(this.s=document.getElementById("BreadcrumbTitle"),this.m=Common.B.a(i,"BreadcrumbAppModeDash","-",null,!1),this.f=Common.B.a(i,"BreadcrumbAppModeStatus",this.d===1?this.i:this.j,null,!1),this.y(this.f),this.r=Common.B.a(i,"BreadcrumbSaveStatusDash","-",null,!1),this.c=Common.B.a(i,"BreadcrumbSaveStatus",this.k,null,!1),this.y(this.c),this.a(this.e,this.d))},F:function(){this.b(!1)},b:function(n){this.h=n;this.E(this.h?this.k:this.l)},E:function(n){this.c&&(this.d===3||this.d===2)&&(this.p&&!this.h?(this.g=this.c.offsetWidth<this.g?this.g:this.c.offsetWidth,this.D(this.l),this.p=!1):this.c.innerText=n)},y:function(n){n.style.direction=this.q?"rtl":"ltr";n.style.width="auto";n.style.textAlign=this.q?"right":"left";n.style.display=this.e?"none":"";n.setAttribute("Unselectable","on")},D:function(n){if(this.c){this.c.style.width="";this.c.innerText=n;this.g=this.c.offsetWidth<this.g?this.g:this.c.offsetWidth;var t=Common.L.a(this.c);this.c.style.width=this.g-Common.p.a(t.paddingLeft)-Common.p.a(t.paddingRight)+1+"px"}}};Common.App.SaveStatus.b=function(n){this.q=Function.createDelegate(this,this.y);this.f=n;this.c=3;this.d=!0};Common.App.SaveStatus.b.prototype={f:null,o:null,p:null,m:null,n:null,c:0,d:!1,e:!1,h:!1,i:!1,l:null,g:null,j:0,k:null,r:null,w:function(n,t,i){if(this.o=this.v(n,t),this.p=$a.U,this.m=$a.P,this.n=$a.R,this.f){var r=this;this.f.a(function(n){n.b(r.q)})}return this.h=!0,this.r=i,!0},a:function(n,t){this.e=n;this.c=t;this.b(this.d)},b:function(n){!this.d&&n&&(this.k=new Date);this.d=n;var t=null;this.c===3&&(t=this.d?this.o:this.p);this.t(t)},v:function(n,t){return n?String.format($a.A,$a.M):t&&t.length?String.format($a.A,t):$a.T},y:function(){this.b(!1)},u:function(){switch(this.c){case 1:return this.m;case 2:return this.n;default:return null}},x:function(n){return this.i===this.e&&this.j===this.c&&this.l===n},s:function(n){var t=this;appChrome.getHeaderApi().then(function(i){return i.updateDocumentTitleStatus(t.e,n,t.u(),t.k,t.d),null});this.g=null},t:function(n){var t,i;this.h&&Common.F.a()&&!this.x(n)&&(Common.g.D()?(this.g&&Diag.a.a(595146389,340,50,"Previous UpdateDocumentTitleStatus idle callback can be cancelled."),t=this,this.g=window.requestIdleCallback(function(){t.s(n)})):(i=this,window.requestAnimationFrame(function(){i.s(n)})),this.i=this.e,this.l=n,this.j=this.c)}};Common.App.SaveStatus.c.registerClass("Common.App.SaveStatus.c",null,Common.App.SaveStatus.a);Common.App.SaveStatus.d.registerClass("Common.App.SaveStatus.d",null,Common.App.SaveStatus.a);Common.App.SaveStatus.b.registerClass("Common.App.SaveStatus.b",null,Common.App.SaveStatus.a);Common.App.SaveStatus.f.a();Type.registerNamespace("_Ewa");_Ewa.BH=function(n){_Ewa.BH.initializeBase(this);this.h=n;this.l()};_Ewa.BH.a=function(n){n.a().b(_Ewa.bkq.$$(Sys.IDisposable),299,new _Ewa.BH(n))};_Ewa.BH.prototype={h:null,a:function(){var n=Common.Utils.a.a(),t=this;n.b(Common.App.SaveStatus.a,null).a(function(i){var r=new _Ewa.sV(t.h,i);n.c(_Ewa.sV,null).a().b(function(){return r});t.k(n.a(_Ewa.sV,null))})}};_Ewa.sV=function(n,t){this.b=Function.createDelegate(this,this.q);this.f=Function.createDelegate(this,this.r);this.j=Function.createDelegate(this,this.v);this.i=Function.createDelegate(this,this.u);this.h=Function.createDelegate(this,this.t);this.k=Function.createDelegate(this,this.w);this.g=Function.createDelegate(this,this.s);this.d=t;this.a=n;this.a.f().d(this.g);this.a.B(this.k);this.a.b().cn(this.h);this.a.b().g(this.i);this.a.cc(this.j);this.a.b().z(this.f);this.o(!1)};_Ewa.sV.prototype={d:null,a:null,c:!1,l:!1,v:function(n,t){t&&t.a&&_Ewa.i.N([t.a])&&this.n(!0)},r:function(){this.n(!1)},u:function(n,t){t&&t.b||this.o(!0);this.n(!1)},p:function(){return this.a.b()?this.a.b().bJ():!1},m:function(n){return n?this.c=!0:_Ewa.c.a(this.a)&&_Ewa.c.a(this.a).b()&&(_Ewa.c.a(this.a).b().k()?this.c=!1:_Ewa.c.a(this.a).b().c(this.b)),this.e(),n},n:function(n){return this.l=n,this.e(),n},dispose:function(){this.a&&(this.a.C(this.k),this.a.cs(this.j),this.a.f()&&this.a.f().e(this.g),this.a.b()&&(this.a.b().cS(this.h),this.a.b().h(this.i),this.a.b().E(this.f)),_Ewa.c.a(this.a)&&_Ewa.c.a(this.a).b()&&_Ewa.c.a(this.a).b().f(this.b))},o:function(n){n=!!(n|!this.a.j());this.d.a(n,this.a.j()?3:1);this.e()},e:function(){this.a.j()&&this.d.b(!this.c&&!this.p()&&!this.l)},w:function(){this.m(this.a.bm());this.o(!1)},t:function(){this.e()},s:function(){this.m(this.a.bm())},q:function(){_Ewa.c.a(this.a).b().f(this.b);this.m(this.a.bm())}};_Ewa.BH.registerClass("_Ewa.BH",_Ewa.sX.$$(Sys.IDisposable));_Ewa.sV.registerClass("_Ewa.sV",null,Sys.IDisposable);Type.registerNamespace("_Ewa");_Ewa.bnA=function(){};_Ewa.bnA.a=function(){_Ewa.m.a(_Ewa.BH.a)};_Ewa.bnA.a();