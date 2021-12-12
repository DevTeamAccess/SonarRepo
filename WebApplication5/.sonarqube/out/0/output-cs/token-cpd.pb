Á
HC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\Autofac.cs
	namespace

 	
WebApplication5


 
{ 
public 

class 
Autofac 
: 
Module !
{ 
	protected 
override 
void 
Load  $
($ %
ContainerBuilder% 5
builder6 =
)= >
{ 	
builder 
. 
RegisterType  
<  !
OperationService! 1
>1 2
(2 3
)3 4
.4 5
As5 7
<7 8
IScopedService8 F
>F G
(G H
)H I
. !
InstancePerDependency "
(" #
)# $
;$ %
} 	
} 
} ˜
WC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\Controllers\CityFlower.cs
	namespace 	
WebApplication5
 
. 
Controllers %
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class  
CityFlowerController %
:& '
ControllerBase( 6
{ 
public  
CityFlowerController "
(" #
)# $
{% &
}' (
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Get) ,
(, -
string- 3
	hex_value4 =
)= >
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
	hex_value& /
)/ 0
)0 1
return 
Ok 
( 
await  
Task! %
.% &

FromResult& 0
(0 1
HexString2B64String1 D
(D E
	hex_valueE N
)N O
)O P
)P Q
;Q R
else 
return 
Ok 
( 
$str A
)A B
;B C
} 	
public 
string 
HexString2B64String *
(* +
string+ 1
input2 7
)7 8
{ 	
var 
resultantArray 
=  
new! $
byte% )
[) *
input* /
./ 0
Length0 6
/7 8
$num9 :
]: ;
;; <
for 
( 
var 
i 
= 
$num 
; 
i 
< 
resultantArray  .
.. /
Length/ 5
;5 6
i7 8
++8 :
): ;
{ 
resultantArray 
[ 
i  
]  !
=" #
Convert$ +
.+ ,
ToByte, 2
(2 3
input3 8
.8 9
	Substring9 B
(B C
iC D
*E F
$numG H
,H I
$numJ K
)K L
,L M
$numN P
)P Q
;Q R
} 
return 
Convert 
. 
ToBase64String )
() *
resultantArray+ 9
)9 :
;: ;
} 	
}!! 
}"" à

fC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\Controllers\WeatherForecastController.cs
	namespace 	
WebApplication5
 
. 
Controllers %
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
readonly 
IScopedService &
transientService1' 8
;8 9
public %
WeatherForecastController '
(' (
IScopedService( 6
transientService27 H
,H I
IScopedServiceJ X
transientService3Y j
)j k
{l m
transientService1 
= 
transientService2  1
;1 2
} 	
[ 	
HttpGet	 
] 
public 
object 
Get 
( 
) 
{ 	
var 
dddd 
= 
transientService1 (
.( )
GetOperationID) 7
(7 8
)8 9
;9 :
return 
dddd 
; 
} 	
} 
} Ò
DC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\IF1.cs
	namespace 	
WebApplication5
 
{ 
public 

	interface 
IScopedService #
{		 
Guid

 
GetOperationID

 
(

 
)

 
;

 
} 
} ô
FC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\IFIMp.cs
	namespace 	
WebApplication5
 
{ 
public 
class 
OperationService "
:# $
IScopedService% 3
{		 
Guid

 
id

 
;

 
public 
OperationService 
(  
)  !
{ 	
id 
= 
Guid 
. 
NewGuid 
( 
) 
;  
} 	
public 
Guid 
GetOperationID "
(" #
)# $
{ 	
return 
id 
; 
} 	
} 
} Ó
HC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\Program.cs
	namespace 	
WebApplication5
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. %
UseServiceProviderFactory &
(& '
new' *)
AutofacServiceProviderFactory+ H
(H I
)I J
)J K
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} •
HC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\Startup.cs
	namespace 	
WebApplication5
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddControllers #
(# $
)$ %
.% &2
&AddXmlDataContractSerializerFormatters& L
(L M
)M N
;N O
}!! 	
public"" 
void"" 
ConfigureContainer"" &
(""& '
ContainerBuilder""' 7
builder""8 ?
)""? @
{## 	
builder$$ 
.$$ 
RegisterModule$$ "
($$" #
new$$# &
Autofac$$' .
($$. /
)$$/ 0
)$$0 1
;$$1 2
}%% 	
public'' 
void'' 
	Configure'' 
('' 
IApplicationBuilder'' 1
app''2 5
,''5 6
IWebHostEnvironment''7 J
env''K N
)''N O
{(( 	
if)) 
()) 
env)) 
.)) 
IsDevelopment)) !
())! "
)))" #
)))# $
{** 
app++ 
.++ %
UseDeveloperExceptionPage++ -
(++- .
)++. /
;++/ 0
},, 
app-- 
.-- 
UseCors-- 
(-- 
)-- 
;-- 
app.. 
... 
UseHttpsRedirection.. #
(..# $
)..$ %
;..% &
app00 
.00 

UseRouting00 
(00 
)00 
;00 
app22 
.22 
UseAuthorization22  
(22  !
)22! "
;22" #
app44 
.44 
UseEndpoints44 
(44 
	endpoints44 &
=>44' )
{55 
	endpoints66 
.66 
MapControllers66 (
(66( )
)66) *
;66* +
}77 
)77 
;77 
}88 	
}99 
}<< Ù
PC:\Users\A HOQUE\source\repos\WebApplication5\WebApplication5\WeatherForecast.cs
	namespace 	
WebApplication5
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 