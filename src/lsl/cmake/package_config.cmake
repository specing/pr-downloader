#http://www.cmake.org/Wiki/CMake:CPackConfiguration

SET( PACKAGE_NAME libSpringLobby )
SET( PACKAGE_VERSION ${LIBSPRINGLOBBY_REV} )

IF (WIN32)
    SET(CPACK_GENERATOR "ZIP")
    SET(CPACK_PACKAGE_FILE_NAME "libSpringLobby-${LIBSPRINGLOBBY_REV}-win32")
	SET( BASEPATH /opt/mingw32/ )
ELSE (WIN32)
    SET(CPACK_CMAKE_GENERATOR "Unix Makefiles")
    SET(CPACK_GENERATOR "TBZ2;TGZ")
    SET(CPACK_PACKAGE_FILE_NAME "libSpringLobby-${LIBSPRINGLOBBY_REV}")
ENDIF (WIN32)
SET(CPACK_INSTALL_CMAKE_PROJECTS "${CMAKE_BINARY_DIR};${CMAKE_PROJECT_NAME};ALL;/")
# SET(CPACK_OUTPUT_CONFIG_FILE "/home/andy/vtk/CMake-bin/CPackConfig.cmake")
# SET(CPACK_PACKAGE_DESCRIPTION_FILE "/home/andy/vtk/CMake/Copyright.txt")
# SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "CMake is a build tool")
#SET(CPACK_PACKAGE_EXECUTABLES "libSpringLobby" "springsettings")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "libSpringLobby")
SET(CPACK_PACKAGE_NAME "libSpringLobby")
SET(CPACK_PACKAGE_VENDOR "The SpringLobby Team")
SET(CPACK_PACKAGE_VERSION ${LIBSPRINGLOBBY_REV})

#SET(CPACK_RESOURCE_FILE_LICENSE ${libSpringLobby_SOURCE_DIR}/COPYING)
#SET(CPACK_RESOURCE_FILE_README ${libSpringLobby_SOURCE_DIR}/README)
# SET(CPACK_RESOURCE_FILE_WELCOME "/home/andy/vtk/CMake/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SOURCE_GENERATOR "TGZ;TBZ2")
# SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/andy/vtk/CMake-bin/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "libSpringLobby-${LIBSPRINGLOBBY_REV}")
SET(CPACK_STRIP_FILES TRUE)
SET(CPACK_SOURCE_STRIP_FILES TRUE)
# SET(CPACK_SYSTEM_NAME "Linux-i686")
# SET(CPACK_TOPLEVEL_TAG "Linux-i686")
set(CPACK_SOURCE_IGNORE_FILES
"^${libSpringLobby_SOURCE_DIR}/build*"
"^${libSpringLobby_SOURCE_DIR}/bin/"
"^${libSpringLobby_SOURCE_DIR}/.*"
"^${libSpringLobby_SOURCE_DIR}/auto*"
"^${libSpringLobby_SOURCE_DIR}/doc/"
"^${libSpringLobby_SOURCE_DIR}/m4/"
"^${libSpringLobby_SOURCE_DIR}/obj/"
${CPACK_SOURCE_IGNORE_FILES}
)
INCLUDE(CPack)
