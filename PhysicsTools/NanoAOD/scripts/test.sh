#!/bin/bash -ve

cmsDriver.py QCD_PT-120to170 \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 1000 \
    --nThreads 10 \
    --filein /store/mc/Run3Summer23MiniAODv4/QCD_PT-120to170_TuneCP5_13p6TeV_pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/2530000/033b3fe0-d709-45e3-8569-c11ca9852845.root \
    --fileout file:Nano_QCD_PT-120to170.root \
    2>&1 | tee Nano_QCD_PT-120to170.log

cmsDriver.py TTto2L2Nu \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 1000 \
    --nThreads 10 \
    --filein /store/mc/Run3Summer23MiniAODv4/TTto2L2Nu_TuneCP5_13p6TeV_powheg-pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/70000/002f0920-e438-4d0d-b479-0d5071d13b84.root \
    --fileout file:TTto2L2Nu.root \
    2>&1 | tee TTto2L2Nu.log
