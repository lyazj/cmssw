#!/bin/bash -ve

unset CMSSW_NANOAOD_SV_SORT
unset CMSSW_NANOAOD_PF_SORT
cmsDriver.py QCD_PT-120to170_nil_nil \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 100 \
    --nThreads 1 \
    --filein /store/mc/Run3Summer23MiniAODv4/QCD_PT-120to170_TuneCP5_13p6TeV_pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/2530000/033b3fe0-d709-45e3-8569-c11ca9852845.root \
    --fileout file:Nano_QCD_PT-120to170_nil_nil.root \
    2>&1 | tee Nano_QCD_PT-120to170_nil_nil.log &

export CMSSW_NANOAOD_SV_SORT=pT
unset CMSSW_NANOAOD_PF_SORT
cmsDriver.py QCD_PT-120to170_pT_nil \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 100 \
    --nThreads 1 \
    --filein /store/mc/Run3Summer23MiniAODv4/QCD_PT-120to170_TuneCP5_13p6TeV_pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/2530000/033b3fe0-d709-45e3-8569-c11ca9852845.root \
    --fileout file:Nano_QCD_PT-120to170_pT_nil.root \
    2>&1 | tee Nano_QCD_PT-120to170_pT_nil.log &

export CMSSW_NANOAOD_SV_SORT=IP
unset CMSSW_NANOAOD_PF_SORT
cmsDriver.py QCD_PT-120to170_IP_nil \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 100 \
    --nThreads 1 \
    --filein /store/mc/Run3Summer23MiniAODv4/QCD_PT-120to170_TuneCP5_13p6TeV_pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/2530000/033b3fe0-d709-45e3-8569-c11ca9852845.root \
    --fileout file:Nano_QCD_PT-120to170_IP_nil.root \
    2>&1 | tee Nano_QCD_PT-120to170_IP_nil.log &

export CMSSW_NANOAOD_SV_SORT=
unset CMSSW_NANOAOD_PF_SORT
cmsDriver.py QCD_PT-120to170_empty_nil \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 100 \
    --nThreads 1 \
    --filein /store/mc/Run3Summer23MiniAODv4/QCD_PT-120to170_TuneCP5_13p6TeV_pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/2530000/033b3fe0-d709-45e3-8569-c11ca9852845.root \
    --fileout file:Nano_QCD_PT-120to170_empty_nil.root \
    2>&1 | tee Nano_QCD_PT-120to170_empty_nil.log &

unset CMSSW_NANOAOD_SV_SORT
export CMSSW_NANOAOD_PF_SORT=pT
cmsDriver.py QCD_PT-120to170_nil_pT \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 100 \
    --nThreads 1 \
    --filein /store/mc/Run3Summer23MiniAODv4/QCD_PT-120to170_TuneCP5_13p6TeV_pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/2530000/033b3fe0-d709-45e3-8569-c11ca9852845.root \
    --fileout file:Nano_QCD_PT-120to170_nil_pT.root \
    2>&1 | tee Nano_QCD_PT-120to170_nil_pT.log &

unset CMSSW_NANOAOD_SV_SORT
export CMSSW_NANOAOD_PF_SORT=
cmsDriver.py QCD_PT-120to170_nil_empty \
    --mc \
    --eventcontent NANOAODSIM \
    --datatier NANOAODSIM \
    --step NANO:@BTV \
    --conditions 130X_mcRun3_2023_realistic_v14 \
    --era Run3_2023 \
    --number 100 \
    --nThreads 1 \
    --filein /store/mc/Run3Summer23MiniAODv4/QCD_PT-120to170_TuneCP5_13p6TeV_pythia8/MINIAODSIM/130X_mcRun3_2023_realistic_v14-v2/2530000/033b3fe0-d709-45e3-8569-c11ca9852845.root \
    --fileout file:Nano_QCD_PT-120to170_nil_empty.root \
    2>&1 | tee Nano_QCD_PT-120to170_nil_empty.log &

wait
