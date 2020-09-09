#!/bin/sh

DATASETDIR=$1
DATASETDIR=${DATASETDIR:=data}

DATASETS="
G4NDL.4.5.tar.gz
G4EMLOW.7.7.tar.gz
G4PhotonEvaporation.5.3.tar.gz
G4RadioactiveDecay.5.3.tar.gz
G4PARTICLEXS.1.1.tar.gz
G4SAIDDATA.2.0.tar.gz
G4ENSDFSTATE.2.2.tar.gz
"

mkdir -p $DATASETDIR
for DATASET in $DATASETS; do
    curl -o $DATASETDIR/$DATASET https://geant4-data.web.cern.ch/geant4-data/datasets/$DATASET
    tar zxf $DATASETDIR/$DATASET -C $DATASETDIR
    rm $DATASETDIR/$DATASET
done

echo "#########################################################"
echo " Data set dir: $DATASETDIR"
echo "#########################################################"
