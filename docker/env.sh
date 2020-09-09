#!/bin/bash

#ROOT
export PATH=/opt/root/install/bin/:$PATH
export LD_LIBRARY_PATH=/opt/root/install/lib/:$LD_LIBRARY_PATH

#Geant4
export G4INSTALL=/opt/geant4/install/
export PATH=$G4INSTALL/bin:$PATH
export LD_LIBRARY_PATH=$G4INSTALL/lib:$LD_LIBRARY_PATH

export G4LEVELGAMMADATA=/opt/geant4/data/PhotonEvaporation5.3
export G4LEDATA=/opt/geant4/data/G4EMLOW7.7
export G4RADIOACTIVEDATA=/opt/geant4/data/RadioactiveDecay5.3
export G4ENSDFSTATEDATA=/opt/geant4/data/G4ENSDFSTATE2.2
export G4SAIDXSDATA=/opt/geant4/data/G4SAIDDATA2.0
export G4PARTICLEXSDATA=/opt/geant4/data/G4PARTICLEXS1.1
export G4NEUTRONHPDATA=/opt/geant4/data/G4NDL4.5

#nexus
export NEXUSDIR=/nexus

