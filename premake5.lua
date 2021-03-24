project "Sha256"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/*.cpp"
	}

	includedirs
	{
		"include/"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

    filter "configurations:Editor_Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Editor_Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Runtime_Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Runtime_Release"
		runtime "Release"
		optimize "on"
