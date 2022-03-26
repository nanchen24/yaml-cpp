project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("imd/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**h",
		"src/**cpp",
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		symbols "on"
