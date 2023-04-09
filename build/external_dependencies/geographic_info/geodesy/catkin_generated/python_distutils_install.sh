#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/leon/test_ws/src/external_dependencies/geographic_info/geodesy"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/leon/test_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/leon/test_ws/install/lib/python3/dist-packages:/home/leon/test_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/leon/test_ws/build" \
    "/usr/bin/python3" \
    "/home/leon/test_ws/src/external_dependencies/geographic_info/geodesy/setup.py" \
    egg_info --egg-base /home/leon/test_ws/build/external_dependencies/geographic_info/geodesy \
    build --build-base "/home/leon/test_ws/build/external_dependencies/geographic_info/geodesy" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/leon/test_ws/install" --install-scripts="/home/leon/test_ws/install/bin"
