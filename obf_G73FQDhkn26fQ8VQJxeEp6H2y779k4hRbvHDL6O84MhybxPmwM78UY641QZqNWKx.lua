local v0=loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))();local v1=v0.CreateLib("SITX HUB Beta 1.0","DarkTheme");local v2=v1:NewTab("🏠 หน้าหลัก");local v3=v2:NewSection("🔧 ส่วนหลัก");local v4;v3:NewToggle("🎣 Cast","เปิด/ปิดการทำงานของฟังก์ชั่น Cast",function(v22) if v22 then local v49=0 -0 ;local v50;while true do if (v49==(0 -0)) then v50=0 -0 ;while true do if (v50==(0 + 0)) then v4=game:GetService("RunService").Stepped:Connect(function() local v76=0;local v77;while true do if (v76==(0 -0)) then v77=nil;for v82,v83 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if (v83:IsA("Tool") and v83.Name:match("Rod")) then v77=v83;break;end end v76=3 -2 ;end if (v76==(1 + 0)) then if v77 then local v86=0 + 0 ;local v87;while true do if (v86==(1056 -(87 + 968))) then print("Cast Enabled using: "   .. v77.Name );break;end if (v86==(0 -0)) then v87={[1]=799.5999999999999 -(271 + 429) ,[2 + 0 ]=2 -1 };v77.events.cast:FireServer(unpack(v87));v86=1414 -(447 + 966) ;end end else print("No rod found!");end break;end end end);print("Cast Enabled");break;end end break;end end else local v51=1288 -(993 + 295) ;while true do if (v51==(0 -0)) then if v4 then v4:Disconnect();end print("Cast Disabled");break;end end end end);local v5;v3:NewToggle("🎣 Reel","เปิด/ปิดการทำงานของฟังก์ชั่น Reel",function(v23) if v23 then local v52=1817 -(1703 + 114) ;while true do if (v52==(701 -(376 + 325))) then v5=game:GetService("RunService").Stepped:Connect(function() local v69=0 -0 ;local v70;while true do if (v69==(0 -0)) then v70={[1 + 0 ]=100,[4 -2 ]=false};game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(v70));break;end end end);print("Reel Enabled");break;end end else local v53=14 -(9 + 5) ;while true do if (v53==(376 -(85 + 291))) then if v5 then v5:Disconnect();end print("Reel Disabled");break;end end end end);local v6;local v7=1266 -(243 + 1022) ;local v8=game:GetService("VirtualInputManager");v3:NewToggle("🔄 AutoShake","เปิด/ปิดการทำงานของฟังก์ชั่น AutoShake",function(v24) if v24 then v6=game:GetService("RunService").Heartbeat:Connect(function() local v58=0 -0 ;local v59;local v60;while true do if (v58==(1 + 0)) then v60=v59:FindFirstChild("shakeui");if (v60 and v60.Enabled) then local v74=0;local v75;while true do if (v74==(1322 -(1249 + 73))) then v75=v60:FindFirstChild("safezone");if v75 then local v84=v75:FindFirstChild("button");if (v84 and v84:IsA("ImageButton") and v84.Visible) then local v89=1180 -(1123 + 57) ;local v90;local v91;local v92;while true do if (v89==(1 + 0)) then v92=Vector2.new(v90.X + (v91.X/2) ,v90.Y + (v91.Y/(4 -2)) );v8:SendMouseButtonEvent(v92.X,v92.Y,254 -(163 + 91) ,true,game:GetService("Players").LocalPlayer,1930 -(1869 + 61) );v89=1 + 1 ;end if (v89==(1 + 1)) then v8:SendMouseButtonEvent(v92.X,v92.Y,0,false,game:GetService("Players").LocalPlayer,0 -0 );break;end if (v89==(0 -0)) then local v93=0 -0 ;while true do if ((0 + 0)==v93) then v90=v84.AbsolutePosition;v91=v84.AbsoluteSize;v93=1;end if (v93==(1 -0)) then v89=1 + 0 ;break;end end end end end end break;end end end break;end if (v58==(1474 -(1329 + 145))) then wait(v7);v59=game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui");v58=115 -(4 + 110) ;end end end);print("AutoShake Enabled");else local v54=584 -(57 + 527) ;while true do if ((971 -(140 + 831))==v54) then if v6 then v6:Disconnect();end print("AutoShake Disabled");break;end end end end);local v9=v1:NewTab("🗺️ Teleports");local v10=v9:NewSection("📍 Teleport Locations");local v11={Moosewood=Vector3.new(2250 -(1409 + 441) ,853 -(15 + 703) ,170 + 80 ),["Mushgrove Swamp"]=Vector3.new(1121 + 1299 ,390 -255 , -(1188 -(262 + 176))),["Roslit Bay"]=Vector3.new( -(2763 -1163),1851 -(345 + 1376) ,407 + 93 ),["Snowcap Island"]=Vector3.new(3313 -(198 + 490) ,596 -461 ,5684 -3314 ),["Statue of Sovereignty"]=Vector3.new(25 + 10 ,1341 -(696 + 510) , -(2118 -1108)),["Sunstone Island"]=Vector3.new( -(2082 -(323 + 889)),1397 -(1091 + 171) , -(178 + 922)),["Terrapin Island"]=Vector3.new( -(675 -(361 + 219)),409 -279 ,6218 -4343 ),["Harvesters Spike"]=Vector3.new( -(1634 -(123 + 251)),670 -535 ,2248 -(208 + 490) ),["The Arch"]=Vector3.new(93 + 1007 ,58 + 72 , -(2086 -(660 + 176))),["Birch Cay"]=Vector3.new(199 + 1451 ,332 -(14 + 188) , -(3025 -(534 + 141))),["Haddock Rock"]=Vector3.new( -(202 + 298),111 + 14 , -(1355 -(20 + 830))),["Earmark Island"]=Vector3.new(1154 + 46 ,273 -143 ,841 -311 ),Vertigo=Vector3.new(0 -0 ,0,0 + 0 ),["Desolate Deep"]=Vector3.new( -(510 + 290),130, -(3838 -(542 + 196))),["Forsaken Shore"]=Vector3.new( -(5895 -3145),526 -(115 + 281) ,3372 -1922 ),["Archeological Site"]=Vector3.new(2058 + 1992 ,108 + 22 ,50),["Ancient Isle"]=Vector3.new(14500 -8500 ,527 -327 ,1100 -800 )};local v12="Moosewood";v10:NewDropdown("🌐 Choose Location","Select the location to teleport",{"Moosewood","Mushgrove Swamp","Roslit Bay","Snowcap Island","Statue of Sovereignty","Sunstone Island","Terrapin Island","Harvesters Spike","The Arch","Birch Cay","Haddock Rock","Earmark Island","Vertigo","Desolate Deep","Forsaken Shore","Archeological Site","Ancient Isle"},function(v25) v12=v25;end);v10:NewButton("🚀 Teleport","Teleport to selected location",function() local v26=0 + 0 ;local v27;local v28;local v29;while true do if (v26==(0 -0)) then v27=0 -0 ;v28=nil;v26=1;end if (v26==(1825 -(1195 + 629))) then v29=nil;while true do if (v27==(0 -0)) then local v71=0 -0 ;while true do if (v71==(242 -(187 + 54))) then v27=4 -3 ;break;end if (v71==(780 -(162 + 618))) then v28=game.Players.LocalPlayer;v29=v11[v12];v71=1 + 0 ;end end end if (v27==(1 + 0)) then if v29 then if (v28 and v28.Character and v28.Character:FindFirstChild("HumanoidRootPart")) then v28.Character.HumanoidRootPart.CFrame=CFrame.new(v29);else print("Player or HumanoidRootPart not found");end else print("Invalid location selected");end break;end end break;end end end);local v13=v1:NewTab("🛠️ Misc (อื่นๆ)");local v14=v13:NewSection("⚙️ Miscellaneous Options");local v15;v14:NewToggle("🔄 Toggle Infinite Air Jump","Enable/Disable unlimited jumping in air",function(v30) local v31=0 -0 ;local v32;local v33;local v34;while true do if (v31==(0 -0)) then v32=game.Players.LocalPlayer;v33=v32.Character or v32.CharacterAdded:Wait() ;v31=1 + 0 ;end if (v31==(1637 -(1373 + 263))) then v34=v33:WaitForChild("Humanoid");if v30 then v15=game:GetService("UserInputService").JumpRequest:Connect(function() v34:ChangeState(Enum.HumanoidStateType.Jumping);end);print("Infinite Air Jump Enabled");else local v64=1000 -(451 + 549) ;local v65;while true do if (v64==0) then v65=0 -0 ;while true do if (v65==0) then if v15 then v15:Disconnect();end print("Infinite Air Jump Disabled");break;end end break;end end end break;end end end);local v16;v14:NewToggle("🌊 Infinity Oxygen","เปิด/ปิดการใช้งาน Infinity Oxygen",function(v35) local v36=0 + 0 ;local v37;local v38;while true do if (v36==(0 -0)) then v16=v35;v37=game:GetService("Players").LocalPlayer;v36=1131 -(369 + 761) ;end if (v36==(1 -0)) then v38=v37.Character or v37.CharacterAdded:Wait() ;if v16 then local v66=1384 -(746 + 638) ;local v67;while true do if (v66==(0 + 0)) then v67=0 -0 ;while true do if ((238 -(64 + 174))==v67) then if (v38:FindFirstChild("client"):WaitForChild("oxygen") and (v38.client.oxygen.Enabled==true)) then v38.client.oxygen.Enabled=false;end v37.CharacterAdded:Connect(function(v81) if (v81:FindFirstChild("client"):WaitForChild("oxygen") and v16) then v81.client.oxygen.Enabled=false;end end);break;end end break;end end elseif v38:FindFirstChild("client"):WaitForChild("oxygen") then v38.client.oxygen.Enabled=true;end break;end end end);local v17=357 -(218 + 123) ;local v18=1631 -(1535 + 46) ;local function v19(v39) local v40=0;local v41;local v42;local v43;while true do if ((0 + 0)==v40) then local v63=0;while true do if (v63==(336 -(144 + 192))) then v41=game:GetService("Players").LocalPlayer;v42=v41.Character or v41.CharacterAdded:Wait() ;v63=217 -(42 + 174) ;end if (v63==(1 + 0)) then v40=1 + 0 ;break;end end end if ((561 -(306 + 254))==v40) then v43=v42:FindFirstChildOfClass("Humanoid");if v43 then v43.WalkSpeed=v39;end break;end end end v14:NewSlider("🏃‍♂️ Select Speed","Adjust the player's walk speed",1 + 15 ,196 -96 ,function(v44) local v45=1467 -(899 + 568) ;local v46;while true do if (v45==(0 + 0)) then v46=0 + 0 ;while true do if (v46==(0 -0)) then v18=v44;print("Selected speed:",v18);break;end end break;end end end);v14:NewToggle("🏃‍♂️ Toggle Speed","เปิด/ปิดการใช้งานความเร็วที่เลือก",function(v47) if v47 then local v55=0 + 0 ;local v56;while true do if (v55==(0 -0)) then v56=603 -(268 + 335) ;while true do if (v56==(290 -(60 + 230))) then v19(v18);print("Speed set to:",v18);break;end end break;end end else local v57=572 -(426 + 146) ;while true do if (v57==(0 + 0)) then v19(v17);print("Speed set to:",v17);break;end end end end);v19(v17);print("Initial speed set to:",v17);local v20=v1:NewTab("📺 Youtube");local v21=v20:NewSection("Youtube ช่อง SitXx");v21:NewButton("👀 Visit Youtube Channel","คลิกเพื่อไปยังช่อง Youtube ของ SitXx",function() local v48=1456 -(282 + 1174) ;while true do if (v48==(856 -(564 + 292))) then setclipboard("https://www.youtube.com/@SitXx");print("ลิงค์ Youtube ถูกคัดลอกไปยังคลิปบอร์ดแล้ว");break;end end end);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--
