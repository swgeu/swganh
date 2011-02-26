# Build the Boost vendor library
set(Boost_ROOT "${VENDOR_PREFIX}/src/Boost" CACHE PATH "" FORCE)
FIND_PACKAGE(PythonLibs REQUIRED)
ExternalProject_Add(BoostShared
	PREFIX ${VENDOR_PREFIX}
	GIT_REPOSITORY https://github.com/anhstudios/boost.git
	GIT_TAG 3e977d9f
	UPDATE_COMMAND ""
	CMAKE_ARGS
		${boost_lib_args}
		-DENABLE_MULTITHREADED:BOOL=ON
    	-DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
		-DCMAKE_MODULE_PATH:PATH=${CMAKE_CURRENT_SOURCE_DIR}/cmake
    	-DCMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG:PATH=${Boost_ROOT}/lib
    	-DCMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG:PATH=${Boost_ROOT}/lib
    	-DCMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE:PATH=${Boost_ROOT}/lib
    	-DCMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE:PATH=${Boost_ROOT}/lib
		-DPYTHON_INCLUDE_PATH=${PYTHON_INCLUDE_DIR}
		-DPYTHON_LIBRARIES=${PYTHON_LIBRARY}
		-DPYTHON_DEBUG_LIBRARIES=${PYTHON_DEBUG_LIBRARY}
		-DBUILD_EXAMPLES:BOOL=OFF
    	-DBUILD_TESTING:BOOL=OFF
    	-DBUILD_VERSIONED:BOOL=OFF
    	-DINSTALL_VERSIONED:BOOL=OFF
    	-DWITH_MPI:BOOL=OFF
		-DENABLE_SHARED:BOOL=ON
		-DENABLE_STATIC:BOOL=OFF
    	-DBUILD_PROJECTS:LIST=python
    LIST_SEPARATOR ^^
    INSTALL_COMMAND ""
)
# Set the path to the built Boost for use by other projects
# set(Boost_INCLUDE_DIR "${Boost_ROOT}" CACHE PATH "" FORCE)
# set(Boost_SHARED_LIBRARY_DIRS "${Boost_ROOT}/lib" CACHE PATH "" FORCE)