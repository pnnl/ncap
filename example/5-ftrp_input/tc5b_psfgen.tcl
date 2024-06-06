package require psfgen
package require autoionize
package require solvate

topology top_all27_prot_na.rtf
topology ncaa.rtf

segment A {
    pdb p12w.pdb
    mutate 6 NCA
}

coordpdb p12w.pdb A
guesscoord
writepdb tc5b_mut.pdb
writepsf tc5b_mut.psf
#solvate tc5b_mut.psf tc5b_mut.pdb -t 8 -o tc5b_mut_wb
#autoionize -psf tc5b_mut_wb.psf -pdb tc5b_mut_wb.pdb \
-sc 0.02 -cation POT -o tc5b_mut_wbi

exit
