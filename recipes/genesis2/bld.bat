copy mpi.f.single mpi.f
copy mpif.h.single mpif.h	

gfortran -g -w -O -Wall -o genesis2 main.f check.f diagno.f esource.f field.f incoherent.f math.f partsim.f pushp.f loadbeam.f loadrad.f magfield.f tdepend.f track.f string.f rpos.f scan.f source.f stepz.f timerec.f initrun.f  input.f output.f mpi.f > output.txt 2>&1

echo "DEBUG Info..."
dir

echo "The build output was: "
type output.txt


flang -g -w -O -Wall -o genesis2 main.f check.f diagno.f esource.f field.f incoherent.f math.f partsim.f pushp.f loadbeam.f loadrad.f magfield.f tdepend.f track.f string.f rpos.f scan.f source.f stepz.f timerec.f initrun.f  input.f output.f mpi.f > output_flang.txt 2>&1

echo "DEBUG Info for flang..."
dir

echo "The build output was: "
type output_flang.txt



echo "-----------------------------------------------"
copy genesis2 %LIBRARY_BIN%

