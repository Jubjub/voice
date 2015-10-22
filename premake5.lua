-- premake5.lua
workspace "voice"
   configurations { "debug", "release" }

project "voice"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"

   files { "src/**.h", "src/**.cpp" }

   filter "configurations:debug"
      defines { "DEBUG" }
      flags { "Symbols" }

   filter "configurations:release"
      defines { "NDEBUG" }
      optimize "On"
