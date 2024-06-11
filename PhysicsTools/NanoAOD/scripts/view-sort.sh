#!/bin/bash

for ROOTFILE in \
    Nano_QCD_PT-120to170_nil_nil.root \
    Nano_QCD_PT-120to170_pT_nil.root \
    Nano_QCD_PT-120to170_IP_nil.root \
    Nano_QCD_PT-120to170_empty_nil.root \
    Nano_QCD_PT-120to170_nil_pT.root \
    Nano_QCD_PT-120to170_nil_empty.root \
; do
    root "${ROOTFILE}" -l -b -x -q -e '
        Events->SetScanField(0);
        Events->Scan("JetSVs_jetIdx:JetSVs_pt", "", "", 10);
        Events->Scan("JetPFCands_jetIdx:JetPFCands_pt", "", "", 1);
    '
    echo
done 2>&1 | tee view-sort.log
