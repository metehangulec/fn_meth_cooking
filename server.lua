local A=string.byte;local f=string.char;local d=string.sub;local E=table.concat;local Q=math.ldexp;local s=getfenv or function()return _ENV end;local h=setmetatable;local r=select;local R=unpack;local O=tonumber;local function i(t)local e,o,n="","",{}local c=256;local a={}for l=0,c-1 do a[l]=f(l)end;local l=1;local function R()local e=O(d(t,l,l),36)l=l+1;local o=O(d(t,l,l+e-1),36)l=l+e;return o end;e=f(R())n[1]=e;while l<#t do local l=R()if a[l]then o=a[l]else o=e..d(e,1,1)end;a[c]=e..d(o,1,1)n[#n+1],e,c=o,o,c+1 end;return table.concat(n)end;local c=i('26U26A27526826927526A24N24X25626826M27925224023V23P23P23R24024N24423R23W24626826P27923R24124A26027L24624X23U23N24023R23Q24T23K23S23R23L27S26D27924H23V24623V24827Q27E28F28523N24623R25223U28O23Q26826S27924W23R23P23V24128Q24024X27M27P24024H23N23Y23Y23K23N23L23T26827327923O23W25923Z23R24623U25923L23X23X23T23V23W23P27Z29P24R28Q23Z24U23N23K23R23Y24126825I29K29M29O29Q29S29U29W29Y26023L23U28B23T24R29Y28523Q23V27Q24624H23X24727R27T28Y29029229429624029827O2AV2682702AD29N29P29R29T29V29X29Z2BH2AJ23P24X24723L23L27W2AA26L27924J23Q23Q2B927R24Q23N23W23Q23Y27M26825H2BD2AF2BG2AI2BJ26028523Z23X27P2AQ23P2AS2AU27R2AQ24T24023Q2C625G2C92BF2AH2BI2AK29328424624J27R23V23O28523R28K2C12B727W27S25J2CU2AG2BL2CD29323X2422D228I2D523R2D723R2D927P29326825D2DE2CB2CX29Z2CZ2402D12BR24623X23W2DQ2842DS27S25C2DW2CW2BM2602DI2DK2E32E52E72DA2DT25N2EC2DG2CY2462D028Z23Q24223U23X2412EV23X2402472412DR2DB26825M2EO2CC2EQ2DJ2ET2EZ2EY2EW2F12F32E82F52DV27529L2BE2DF2F92DZ2ER2E12BO23Q23N23O2862F42DT2EB2FL2AE2CV2EP2FQ2DJ2FT2FV2FX2FI29326K27926B27927727927B25627926A26B26827924726I1I1T21226I2752462GU26A21Q2GX26C2GF26F27924227I2B026G27925R2HA2HB2HC2682GN2752HA2682322H925R25E24G24N25124J24W24N25F25E28S29225E2HW23N25E24123L27I24224625E2D523X23Z25E2452IB25O23O23V27P23Z25O2E62462452F023T25Q2HX23O25E24B2AY25E23P23X2I528H2I62402I82I02I823R2452AN28525E2A824123R2IO2IS24725H27P25E2A727Q2I023L23N23Z29O23Q25E2C22JP2IL23W25H2I52852BR2IF23R2I62472E12J625E2472422FU28Q2AA24T2HK2HU23U2HW29O24124123N27L2HX24125E2E523Y24B2HX23W25E29Q2K02JA2DA24025E29T23W24123X2C52JQ2C325E23Q23X27W2JU2I52FV2FW28C2IR2IT29X2L52KQ24523N24B26822Z2KC25123R25H2J72E028I29Y2KT23X25E2H52IW28B2I52AY2KY2I12I32462KM2JR2KT2KE2KM2HW23S2F22LC25E25H2LV27M25H2M02J028Q28C23V2E52IA2KE2L42452LS2J72802LW23P2I024624723O2IQ2H523R2422842862IO27Q23S23X2KQ2KU2JK2M82HT2602EN2GK28X2752GP2GR21D2GX24326Q2GR1P26Q2GV26Q2NZ2NY2NQ2GQ1T1P2NU26Y2NX26Y2O02O22NZ26A2NR2O62NU25E2NX25E2OC26A2O32OF2O52O727524325M2NX2F726A2462O12ON2OE2OG2OR26A24325U2NX25U2OM2OO2P22O82OA2P92P12OQ2NU2NW2O62OE2OY2OD2GV2GX2P32H12762782752GI28M27524L2A12A32A52A723Y2682H82752C22DM2D628K26828E2Q52EI2E626826N2792AS2FD2EZ2FG2QA2792412472FU2FW23Q2GK2B127524E2GX1Z2GX24B2PG27524A26Y2OL1P2OB26A23R2O92O62R724A26Q2R52OE23R2R126A2JP2R52OL26A2HZ2OK27523Q2RE2P02Q52RI23M25M2R52OW23Z2OU2O62OW23M2RS2OO23Z2RI23Y25U2R52P826A23V2P62O62SC23Y2OE2OO24E26A2O22792GW2752P326J2GF2PS27A27C2682BU2PW29P24Y23Y2LM27M24K2J023Z24R28V2GX2OX2E524723Z2A72402682OE26A2802AQ27P27R2F024B2A223R23Z2Q32792Q62D42Q823R2682H327529T2AZ28D2TU2QD2TY2QG2752QI2EW2FE2F02F22QM2752QO2QQ2862GK2692NN26A2R02GR1J2GX2R32R52R72QS2SQ2792RD2RF2752R92PD26A23M26Y24I2ON2R72S02OV2752S42UZ2V325M23M2ON2OW2RR2VD23N2RA2R627523Y2V52V727523V2622NX2622VO2S52OE2S92VG1P2SC2VC2RT26A23Z2VM2R723U2VQ2VN26A25324I2NX2V626A23U2VY27523U2622W12VW26A2SI2VD23V2W82752522WB2R724Z24Q2NX24Q2WV2WK26A25224I2W12WH2WJ2VD2522PO2GX24D25U2V62W226A22Q2442S11M2F722Q24D25E24Y26A2142OL2XK2RA1M2OB2XP26Q2VG2142NZ2XK2O51M2GU2XP26I24226A21H2Y824426A2GR1M27522Q2XS2751O27924Y2GX1Q2GX2522OZ21G2PK2GX2GZ2752U026A2682PQ26A2L22K22BR2GG2PT2SW2SY26A2PX2462T12T32402T52I82T82TH2TU2BX2TL2AV2TO2TQ2TS26E2792CA2GK26B2Q42P42O51U2GX24F2PI2SK26Q2P82OO24A2XD2QV2X42RD2XH2RG2S11P2S32791P2UX26Y2O22R72SP2ON2H02GF2Z32AX23W2IE23P2ZL2VS2AR2862CM2462592F02CR2TG2Z32Z52402Z72SU2PU2ZB2ZD2ZF24B2T42T62ZK27U2U92TR2CH23R2ZO2TN2402TP2A32QT2NP26A2452WP2162VW2XK2SF1M2P822Q2412OW2162XO2442OJ1T1M2XV24F2O521N2GX24E2RS21M2OE312K2751L2OE24D2GX22I2YE2YG312D2YJ310P2YY26A24F2RA21N2R72KQ2GR1W2RM2R32XS2WC2RR2SQ2OE2UY2W523Q26Y2W12R723N2RV2RX2VH2VB2OW310H2VO310A2RJ310M2VR2OX313U2ZT27631182M52BR26B2GM2QB26A28G28I28K23W2PV314828O28Q28S28U2GE2752ZY2Z82SV27D311E2T02T2311H2ZH311J28V3147314928J28L314026A25123N28H2Z228F2E5310W2TT2Q52D32DN2DP268315028I29O2GK27524I23124I310Y2RN2ZN23W2TM2E4311S2ZR2TZ2792U227R315I29J2O42GR312I2GV26A2OL21M2H4279132SO2RS21L2OE2422GX13312J31692H426I2OL112GX24123E275216316Q2XK2362YH2362XJ24331332R7316F2V62293102310G2OW312K2W1312N26Q2YB310522Q2W52422OZ2OO316F2SQ316I2UW275316F2R5316O24A2BU1P24A1T24D2442421T312D317Y24D2YB316X316727524F2SF1R2SC24B31762R2313J313X2R321U313X242313W2WC244262317Z1P318N24D312Z2TA2ZY2OG22H2GX2YB317M26A2YB2R5279316Z2V23172310Q27524D1Q25P26A171Q317V2462792182SO2791V2H42YU2YW27531302HF2Z131422Z623R314J2GK31502OG31633190316J317N316526A1D2SO2YX2GX315031552UG3143319V314628F28H314Y314C27F27524H314F28R28T23R23N23Q319W314L311C2ZA279311F314R311I2ZJ314V31AG314A314Z27931523154310T315727J2UF2RN2U6315E2SO23V315H315I315K315M2TI31AR23Q311Q315S311T2TR315V2U12AY315Y2GK31602OP31622GX319G31663168275316A2O02OL316D317N316G317L26A31C63190316L26A316N2UG316Q26A316S2XJ244316V312D316X22Q31941T313431CA317331752VA26A31782W5312K317C317A317E317I317H316E313U2SL318Z317O31972Z4317R2ON317U317W317Y3180317V318326A318531313188318A318C26A2R3313K318D318H2WC318J310N275318M318O318Q318S279318U2O5318W31A331DC31A4310K2OS2WU31CF2XH2XE319A319C319E318R319H319J275319L317N319N2PN319P2GX319R31AB2Z431AD319W279319Y312H318X31A231A12OL31A631EU2GY31A9310S2QN31F031AF31AL31AH314B314D31AM31AQ314G31AP31AR31AT2ST2GH31AW2SZ2ZE31AZ314T31B131BC314X31FJ315031B727S31B9310V31BB2U826A2UA2EX2QK2UE315F31BH23R315I26A31BK315N31BN31BP2ZQ2A331BT26A315X319G31BX2GO31F4316431C331EB31CD316B31C831D931C531CC31CE31DD31CI2Z431CK31CM316U316W316Y317031CW26A3174318631DT31D1310531D4310B31D6316E31D831CA317K2QV310J316K317P2UG31DG317T317V317X317Z1M318131DN31DP31872GR3189275318B31CZ31DV318F26Y31DY3171318K2R731E32O631E531A831E731GU2GR31EA31A131EC319231EF319526I31EI319831EK319D319F31EO316431EQ319M2NZ2YV31FA319Q31FD31AC319U31F127531F331C031GY31H531A431F9313Y31EV31JF31JB31EZ31JD31FG314831FI28L31AK314E31FM31AO314I31IO2PR31FS314O31AX314Q2ZG2ZI2T731B231FH31B4314C31G2315331G4315631G6310X31472UH2G828V31GE31BI2GK31GJ31BM315P315R31GN31BS2Z031GR315Z31IP31CU31C131A431DP318Y31GZ31C726A31C931CF31H331HT31C531HV31CH316O31H9316T31CO31HC31CS31HE31EH31HG31CY2S2310B3179310B31HM31D026Q31HO31ES2PM31LA31DE31DB2ON31LE2P327X317S31DI31I131DL318226A318427931I71T31I92UN31DT31ID2WC318G318I31II31E2318N31IL319F31IN314K31L031IR31L531EE31F731M331IV2RB31HF2P33199319B31J131EN275319I31J426A31ER319031ET31JM31FB27631JP3119314431GH31JG31L131JI316831F831A731JN2FL31L021P31L231EC318Z31M231MY24A31HU2V031042OE2VL2V223Z312W21A279313I31J72R72K031622RM2JP2XS21M2RM313M2GR21A2GX2RR31J72RG31GV2RJ25E2VG31OL2Q52VU1T2282WP23Z2PI21A2OE31OD26A21G31OF31OU2JP31OX31OM2WF31P12WH2W731OO2UU313W1931OF2X02O62X22RN24Y2NX2YL31OR2W523R2562NX2GJ31PS31PU2752I931OO31OI31PM31PO2X12Q523M2NX2VG2RJ31HQ2R831PZ2O631Q123N31QC2O631QE2V91T21A2VI31Q82V031PP1P31PR23N23U2NX23U2RQ31QG31PY31Q02Q531QZ2O631R126A23X25M2NZ172XO31GS26A31NA313V2NZ31PN31QU31QA2RN2422NX318Y31PW2OO31R431QJ2Q531RP2O6318Y23X25U31RD312531RG31RI31P831RL2R831QV31QX24A2NX31O231QF31LZ31RU1P31QK31SB2O631SD23X26231RD3121310P21831OQ31QT31S831RN23N22Q2NX317E31SE31PX31QI31SH2Q531SX2O631SZ23X24I31RD2V622Q31SQ31SS31RK31Q931PQ2Q522Y2NX22Y31R231SF31T231QK31TJ2O631TL31RA24Q31RD2X231TC2OE21831P731ST2DQ31SV31CP1P316X31T031RT31TO2Q531U431U623X24Y31RD2XS31TX31N931U031TF31RM31TH2RN23E2NX31CK31RS2RG31U931UN31UP27523X25631RD2GJ31TC2R721831PL31UK31SU31UM23N21U2NX318H31U731US31R52RN31V92O631VB23X2S4319C2VG31V131N931V431P9310O31MT');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local d,c=l%2,o%2 if d~=c then n=n+e end l,o,e=(l-d)/2,(o-c)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function e(o,l,e)if e then local l=(o/2^(l-1))%2^((e-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(o%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local o,e,d,c=A(c,l,l+3);o=n(o,226)e=n(e,226)d=n(d,226)c=n(c,226)l=l+4;return(c*16777216)+(d*65536)+(e*256)+o;end;local function a()local e=n(A(c,l,l),226);l=l+1;return e;end;local function O()local n=o();local l=o();local d=1;local n=(e(l,1,20)*(2^32))+n;local o=e(l,21,31);local l=((-1)^e(l,32));if(o==0)then if(n==0)then return l*0;else o=1;d=0;end;elseif(o==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return Q(l,o-1023)*(d+(n/(2^52)));end;local t=o;local function i(e)local o;if(not e)then e=t();if(e==0)then return'';end;end;o=d(c,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=f(n(A(d(o,l,l)),226))end return E(e);end;local l=o;local function A(...)return{...},r('#',...)end local function P()local f={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local t={0,0,0,0,0,0,0,0,0,0,0,0,0,0};local l={};local c={f,nil,t,nil,l};local l=o()local d={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for o=1,l do local e=a();local l;if(e==1)then l=(a()~=0);elseif(e==0)then l=O();elseif(e==2)then l=i();end;d[o]=l;end;c[2]=d for l=1,o()do t[l-1]=P();end;c[4]=a();for c=1,o()do local d=n(o(),116);local o=n(o(),251);local n=e(d,1,2);local l=e(o,1,11);local l={l,e(d,3,11),nil,nil,o};if(n==0)then l[3]=e(d,12,20);l[5]=e(d,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(d,21,29);end;f[c]=l;end;return c;end;local function Q(l,i,a)local n=l[1];local e=l[2];local o=l[3];local l=l[4];return function(...)local n=n;local d=e;local X=o;local c=l;local G=A local e=1;local f=-1;local O={};local A={...};local t=r('#',...)-1;local E={};local o={};for l=0,t do if(l>=c)then O[l-c]=A[l+1];else o[l]=A[l+1];end;end;local l=t-c+1 local l;local c;while true do l=n[e];c=l[1];if c<=38 then if c<=18 then if c<=8 then if c<=3 then if c<=1 then if c>0 then o[l[2]]=(l[3]~=0);e=e+1;else local O;local t;local A;local c;c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];end;elseif c==2 then local O;local t;local A;local c;o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];e=e+l[3];else o[l[2]]=(l[3]~=0);end;elseif c<=5 then if c>4 then o[l[2]]=o[l[3]];else local O;local t;local A;local c;o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];e=e+l[3];end;elseif c<=6 then o[l[2]]=i[l[3]];elseif c==7 then local r;local A;local t;local O;local c;o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;r={o[c](R(O,1,A-c))};A=c+l[5]-2;t=0;for l=c,A do t=t+1;o[l]=r[t];end;f=A;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];do return end;else o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]][o[l[3]]]=d[l[5]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];end;elseif c<=13 then if c<=10 then if c>9 then local r;local A;local c;local O;local t;o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];if(o[l[2]]<=o[l[5]])then e=e+1;else e=e+l[3];end;else local A;local t;local O;local c;c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];end;elseif c<=11 then o[l[2]]=o[l[3]][d[l[5]]];elseif c>12 then local A;local t;local O;local c;c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];else o[l[2]]=#o[l[3]];end;elseif c<=15 then if c>14 then e=e+l[3];else local l=l[2];local n={};local e=0;local d=f;for l=l+1,d do e=e+1;n[e]=o[l];end;o[l](R(n,1,d-l));f=l;end;elseif c<=16 then local O;local t;local A;local c;c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];elseif c==17 then local A;local t;local O;local c;c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];else o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]][o[l[3]]]=d[l[5]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];end;elseif c<=28 then if c<=23 then if c<=20 then if c==19 then e=e+l[3];else o[l[2]][o[l[3]]]=d[l[5]];end;elseif c<=21 then o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]][o[l[3]]]=d[l[5]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];elseif c>22 then o[l[2]]=o[l[3]]*d[l[5]];else o[l[2]][o[l[3]]]=d[l[5]];end;elseif c<=25 then if c>24 then o[l[2]]=Q(X[l[3]],nil,a);else o[l[2]]=o[l[3]][o[l[5]]];end;elseif c<=26 then o[l[2]]=i[l[3]];elseif c==27 then o[l[2]]=(l[3]~=0);else local A;local t;local O;local c;o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];e=e+l[3];end;elseif c<=33 then if c<=30 then if c==29 then o[l[2]]={};else local t=X[l[3]];local f;local d={};f=h({},{__index=function(e,l)local l=d[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=d[l]l[1][l[2]]=e;end;});for c=1,l[5]do e=e+1;local l=n[e];if l[1]==53 then d[c-1]={o,l[3]};else d[c-1]={i,l[3]};end;E[#E+1]=d;end;o[l[2]]=Q(t,f,a);end;elseif c<=31 then o[l[2]]=#o[l[3]];elseif c==32 then local n=l[2];local d={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;d[e]=o[l];end;local d={o[n](R(d,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;f=l;else if(o[l[2]]<o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=35 then if c>34 then o[l[2]]=o[l[3]][d[l[5]]];else o[l[2]]=a[d[l[3]]];end;elseif c<=36 then a[d[l[3]]]=o[l[2]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];elseif c==37 then o[l[2]]=d[l[3]];else if(o[l[2]]>o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=57 then if c<=47 then if c<=42 then if c<=40 then if c==39 then do return end;else local O;local t;local A;local c;o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];do return end;end;elseif c==41 then local n=l[2];local d={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;d[e]=o[l];end;local d,l=G(o[n](R(d,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=d[e];end;f=l;else local O;local t;local A;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]]*d[l[5]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][o[l[5]]];e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=44 then if c==43 then o[l[2]]=(l[3]~=0);e=e+1;else if(o[l[2]]>o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=45 then local e=l[2];local d={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;d[n]=o[l];end;o[e](R(d,1,l-e));f=e;elseif c==46 then o[l[2]]=o[l[3]][o[l[5]]];else local O;local t;local A;local c;c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];end;elseif c<=52 then if c<=49 then if c>48 then if(o[l[2]]<=o[l[5]])then e=e+1;else e=e+l[3];end;else local e=l[2];local d={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;d[n]=o[l];end;o[e](R(d,1,l-e));f=e;end;elseif c<=50 then local n=l[2];local c={};local e=0;local d=n+l[3]-1;for l=n+1,d do e=e+1;c[e]=o[l];end;local d={o[n](R(c,1,d-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;f=l;elseif c>51 then local A;local t;local O;local c;c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];else if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=54 then if c>53 then a[d[l[3]]]=o[l[2]];else o[l[2]]=o[l[3]];end;elseif c<=55 then o[l[2]]=Q(X[l[3]],nil,a);elseif c==56 then local l=l[2];local n={};local e=0;local d=f;for l=l+1,d do e=e+1;n[e]=o[l];end;o[l](R(n,1,d-l));f=l;else local r;local A;local t;local O;local c;o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;r={o[c](R(O,1,A-c))};A=c+l[5]-2;t=0;for l=c,A do t=t+1;o[l]=r[t];end;f=A;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][o[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];do return end;end;elseif c<=67 then if c<=62 then if c<=59 then if c==58 then local c,c;local r;local A;local c;local O;local t;o[l[2]]=o[l[3]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r={o[t](R(O,1,A-t))};A=t+l[5]-2;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];t=l[2];O={};c=0;A=t+l[3]-1;for l=t+1,A do c=c+1;O[c]=o[l];end;r,A=G(o[t](R(O,1,A-t)));A=A+t-1;c=0;for l=t,A do c=c+1;o[l]=r[c];end;f=A;e=e+1;l=n[e];t=l[2];O={};c=0;A=f;for l=t+1,A do c=c+1;O[c]=o[l];end;o[t](R(O,1,A-t));f=t;e=e+1;l=n[e];do return end;else o[l[2]]=a[d[l[3]]];end;elseif c<=60 then o[l[2]]={};elseif c>61 then local O;local t;local A;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]]*d[l[5]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][o[l[5]]];e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;else local O;local t;local A;local c;c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];end;elseif c<=64 then if c>63 then o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]][o[l[3]]]=d[l[5]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];else a[d[l[3]]]=o[l[2]];end;elseif c<=65 then local A;local t;local O;local c;c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];O={};t=0;A=c+l[3]-1;for l=c+1,A do t=t+1;O[t]=o[l];end;o[c](R(O,1,A-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];elseif c==66 then local O;local t;local A;local c;c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];else if(o[l[2]]<o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=72 then if c<=69 then if c>68 then o[l[2]]=o[l[3]]*d[l[5]];else if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=70 then local t=X[l[3]];local f;local d={};f=h({},{__index=function(e,l)local l=d[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=d[l]l[1][l[2]]=e;end;});for c=1,l[5]do e=e+1;local l=n[e];if l[1]==53 then d[c-1]={o,l[3]};else d[c-1]={i,l[3]};end;E[#E+1]=d;end;o[l[2]]=Q(t,f,a);elseif c==71 then local n=l[2];local d={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;d[e]=o[l];end;local d,l=G(o[n](R(d,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=d[e];end;f=l;else local O;local t;local A;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]]*d[l[5]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][o[l[5]]];e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=74 then if c==73 then o[l[2]]=d[l[3]];else if(o[l[2]]<=o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=75 then do return end;elseif c==76 then local O;local t;local A;local c;o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];e=e+l[3];else local O;local t;local A;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=a[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]]*d[l[5]];e=e+1;l=n[e];c=l[2];A={};t=0;O=c+l[3]-1;for l=c+1,O do t=t+1;A[t]=o[l];end;o[c](R(A,1,O-c));f=c;e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=i[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][o[l[5]]];e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;e=e+1;end;end;end;return Q(P(),{},s())();