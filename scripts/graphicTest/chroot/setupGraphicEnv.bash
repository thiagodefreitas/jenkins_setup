#!/bin/bash
export WORKSPACE=$1
. $WORKSPACE/env_vars.sh
env
export DIR=$WORKSPACE/jenkins_setup/scripts/graphicTest/chroot

$DIR/setupSoruces.bash
$DIR/installNvidia.bash
$DIR/installPackages.bash
$DIR/installLatestRosRepos.bash
$DIR/installSimulator.bash
$DIR/installTest.bash
$DIR/startTest.bash