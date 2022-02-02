Type.registerNamespace("Common.App.O365Shell");Common.App.O365Shell.c=function(){this.e=Function.createDelegate(this,this.f)};Common.App.O365Shell.c.a=function(){Common.App.a.a().a(new Common.App.O365Shell.c,0,!1)};Common.App.O365Shell.c.prototype={d:null,a:function(){return"Common.App.O365Shell"},c:function(n){this.d=n;var t=this;this.d.c(Common.App.O365Shell.a,null).c(Common.App.O365Shell.b,null).a().b(function(){return new Common.App.O365Shell.a(new($$sc.z.$$(Common.fJ))(function(){return Common.a.e}),Common.a.a,Common.a.b().a().a())})},b:function(){Common.a.a.k(this.e)},f:function(){if(Common.a.dd){var n=Common.a.a.a("AppSwitcherMitigationIsEnabled");(!n||Common.a.b().a().c())&&this.d.a(Common.App.O365Shell.a,null).z()}}};Common.App.O365Shell.a=function(n,t,i){this.o=Function.createDelegate(this,this.x);this.k=Function.createDelegate(this,this.t);this.l=Function.createDelegate(this,this.u);this.m=Function.createDelegate(this,this.v);this.n=Function.createDelegate(this,this.w);this.e=new($$sc.D.$$(Object));this.g=n;this.p=i;this.j=t.l.d.ShellWebServiceBase||""};Common.App.O365Shell.a.prototype={i:!1,h:!1,f:null,d:null,g:null,p:0,j:null,b:null,a:function(){return this.e.b},r:function(){return this.g.a()},z:function(){var n,t;this.b=document.getElementById("sw_bar");n={};n["X-qs"]=Common.a.i;n["Content-Type"]="application/json; charset=utf-8";Diag.a.a(6612806,215,50,"Client is sending a request to get the code for the O365 switcher");t=Common.k.a(this.j+"O365ShellServiceProxy.ashx","at",Common.a.b().a().a().toString(),!1);this.r().a(t,1,"",n,!0,2,this.n,this.m,null,null,!1,null,null,"20",null,!1,null,!1,null)},s:function(n){try{var t={};t.FlightName=n.FlightName;t.SessionID=n.SessionID;Diag.a.a(594883776,215,50,JSON.stringify(t))}catch(i){Diag.a.a(594883747,215,10,"Unable to log NavBarData")}},w:function(n){var i=n.b.b,t,r,u;if(!i||!i.length){this.c();Diag.a.a(6362369,215,10,"Response from O365ShellServiceProxy is null.");return}try{if(t=JSON.parse(i),Common.a.b().a().c()?(this.f=t.NavBarDataJson,Diag.a.a(41551899,215,50,"Skipping call to TryLoadResources for React Shared Header.")):this.A(t)&&(this.f=t.NavBarDataJson),!this.f){Diag.a.a(9000737,215,15,"ShellData is null");this.e.e();return}if(!(u=Common.bp.a(t.NavBarDataJson,r={val:this.d}),this.d=r.val,u)){Diag.a.a(7660113,215,10,"Failed to deserialize : {0}",{ShellData:Common.Utils.e.a(this.f)});this.e.e();return}this.s(this.d);this.e.a(this.d)}catch(f){this.c();Diag.a.a(6362370,215,10,"Unable to parse the response from O365ShellServiceProxy.");this.e.e()}},v:function(){this.b&&this.c();this.e.e();Diag.a.a(7608091,215,10,"Call to O365ShellServiceProxy failed.")},A:function(n){var t,i;return!n.JsUrl||!n.JsUrl.length?(this.c(),Diag.a.a(6387854,215,10,"Empty or null JS URL."),!1):(t=Common.bI.a(n.JsUrl),t.e(this.l),Common.bi.a(t),!n.CssUrl||!n.CssUrl.length)?(this.c(),Diag.a.a(6387855,215,10,"Empty or null CSS URL."),!1):(i=new Common.fx(n.CssUrl),i.e(this.k),Common.bi.a(i),!0)},t:function(n,t){t.a?(this.h=!0,this.q()):(Diag.a.a(7608092,215,10,"CSS failed to load"),this.c())},u:function(n,t){t.a?(this.i=!0,this.q()):(Diag.a.a(7608093,215,10,"JS failed to load"),this.c())},q:function(){if(this.h&&this.i){if(!this.b){Diag.a.b(7608280,215,!1,null);return}Sys.UI.DomElement.removeCssClass(this.b,"SwitcherLoading");var n=document.createElement("div");n.id="ShellContainer";this.b.appendChild(n);this.y()}},y:function(){var n=window.self.O365Shell,t,i;if(!n){this.c();Diag.a.b(6613128,215,!1,null);return}if(!n.SetData){this.c();Diag.a.b(6613129,215,!1,null);return}if(!this.f){this.c();Diag.a.b(6613130,215,!1,null);return}if(!this.d){this.c();return}if(n.SetData(this.d),i=(t=new Common.App.O365Shell.a.a,t.launcher="ShellContainer",t.switcher="sw_bar",t),!n.RenderAsync){this.c();Diag.a.b(6613131,215,!1,null);return}n.RenderAsync(i,this.o)},x:function(){if(this.b){var n=this.b.getElementsByTagName("a");n&&n.length>0&&n[0]&&this.b.style.display!=="none"&&n[0].focus();Common.a.c().d(1448619089,2,null);Diag.a.a(6612807,215,50,"O365 switcher tiles added to the DOM.")}else Diag.a.a(41551900,215,15,"Switcher DOM element is null. Cannot append shell container.")},c:function(){this.b&&!Sys.UI.DomElement.containsCssClass(this.b,"SwitcherError")&&(Sys.UI.DomElement.removeCssClass(this.b,"SwitcherLoading"),Sys.UI.DomElement.addCssClass(this.b,"SwitcherError"),Diag.a.a(7129104,215,10,"Failed to display O365 Shell Switcher."))}};Common.App.O365Shell.a.b=function(){};Common.App.O365Shell.a.c=function(){};Common.App.O365Shell.a.a=function(){};Common.App.O365Shell.a.registerClass("Common.App.O365Shell.a",null,Common.App.O365Shell.b);Common.App.O365Shell.a.b.registerClass("Common.App.O365Shell.a.b");Common.App.O365Shell.a.a.registerClass("Common.App.O365Shell.a.a");Common.App.O365Shell.c.a();