#! /bin/bash
# This script creates a tarball of all the source files
echo "Creating Build Directory at $(pwd)/build"
mkdir ./build
echo "Build directory created"
#
echo "Copying Source to build directory"
cp -R ./src ./build/uw_work_term_report
echo "source copied"
#
echo "Packaging"
tar -czvf ./build/uw_work_term_report.tar.gz ./build/uw_work_term_report;
echo "Packaged"
#
echo "Cleaning Up"
rm -rf ./build/uw_work_term_report
echo "Build complete. Tarball should be accessible at $(pwd)/build"
