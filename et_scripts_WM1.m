%% 15 jul 2021
cd C:\ShapesExp\FINALTRY_3Objects_arrowBased %%2dropbox _Yoram\Projects2\WMmsCDA\NEWexp\Real\NewTry\NewNewTry\;
%%cd C:\ShapesExp\ALLDATA\WMmsCDA\NEWexp\Real\NewTry\OLD
%%py_load_all('*-WMKH_final');
py_load_all('*-WMKH_FINAL_NEW_3_ORBased_*');
%%
et_set_psy('gx');

%
%et_extract_msRT([1.1 1.7]); % NOT BAD
et_extract_msRT([0.2 0.8]);
%et_extract_msRT([0.2 1.2]);
%et_extract_msRT([0.09 0.5]);
xplot('psy');
xplot('x','gx','y','msRT','g','obsi','n','av+');
xplot_globals
plot_anova1_XP
xplot('x','gx','y','msRT','g','obsi','n','av+','fig','compb.1.2');
%xplot('x','gx','y','msRT','g','obsi','n','av+','fig','compb.1.2','in2SD',1);
xplot('x','gx','y','msRT','g','obsi','n','av+','fig','compb.1.3');
xplot('x','gx','y','msRT','g','obsi','n','av+','fig','compb.2.3');

xplot('x','gx','y','msRT','g','','n','av+','f','@obsi and gx<3');
xplot('x','gx','y','msRT','g','obsi','n','1st','f','@obsi and gx<3');
xplot('x','gx','y','msRT','g','obsi','n','1st','f','@obsi and gx~=2');
xplot('x','gx','y','msRT','g','obsi','n','1st','f','gx==1 gx==3 and @obsi');

xplot('y','msRT','g','obsi','n','','f','gx==1 gx==3','fig','scat');
xplot('y','msRT','g','obsi','n','','f','gx==1 gx==3','fig','scatse');


%% microsaccade rate
et_plot_ERE('ms','m','','.',{'^1$','^2$','^3$'},1,0,0,0,0);
et_plot_ERE('ms','m','','.',{'^1$','^2$','^3$'},1,0,0,0,0);

et_plot_ERE('ms','m','','.','1 2',1,0,0,0,0); setsize(2,1);

%% Pupil

et_plot_ERE('p','npre','','.',{'^1$','^2$','^3$'},0,0,0,0,0);
et_plot_ERE('p','npre.obs','','.',{'^1$','^2$','^3$'},0,0,0,0,0);

 
%% 9 may 2021
cd2dropbox _Yoram\Projects2\WMmsCDA\NEWexp\Real\NewTry;
py_load_all('*-WMKH_final');
et_set_py('gx','cmnt');

et_plot_ERE('p','npre','','.','1 2 3',1,0,1,0,0);
et_plot_ERE('ms','npre.obs','','.','1 2 3',1,0,1,0,0);
et_plot_ERE('p','%pre.obs','','.',{'^1$','^2$','^3$'},0,0,0,0,0);


%% Pupil peaks
% DOES NOT PICK THE LARGER PUPIL DILATION FOR 3 ?????

%et_extract_minmax('P',[2 4]);
et_extract_minmax('P',[1 3.5]);
xplot('psy');
%xplot('x','gx','y','Pm','g','obsi','n','av+','f','@obsi');
xplot('x','gx','y','PM','g','obsi','n','av+','f','obsi~=5 and ~mshit');

xplot('x','gx','y','PM','g','obsi','n','av+','f','','fig','compb.1.2');
%xplot('x','gx','y','PM','g','obsi','n','av+','f','','fig','compb.1.3');


%%
cd2dropbox _Yoram\Projects2\WMmsCDA\NEWexp\Real;
py_load_all('*-WMKH_final');
%%
et_delete_ms(1);
py_update_eyetracking(0,[-0.5 4]);
%%

 et_plot_ERE('ms','m','','.',{'^1$','^2$','^3$'},1,0,1,0,0);
%%
 et_plot_ERE('p','m','','.',{'^1$','^2$','^3$'},1,0,1,0,0);
%%
 et_plot_ERE('pdif','m','','.','.',1,0,1,0,0);
