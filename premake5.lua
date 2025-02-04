workspace "VulkanTutorial"
    configurations { "Debug", "Release" }
    platforms { "Win64" }

project "VulkanTutorial"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"
    cppdialect "C++23"

    files { "include/**.h", "include/**.hpp", "src/**.c", "src/**.cpp" }

    includedirs { "include" }
    includedirs { "src" }
    libdirs { "lib" }

    links { "glfw3" }
    links { "vulkan-1.lib" }

    filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"