#!/bin/bash

#Daftar menu 
echo "=== DAFTAR MENU ==="
echo 	"	 Menu		|	Harga 	"
echo 	" 	1.Nasi Goreng	|	15.000	"
echo	" 	2.Mie Ayam	|	12.000	"
echo	" 	3.Sate Ayam	|	18.000	"
echo	" 	4.Teh Manis	|	5.000	"
echo	" 	5.Es Jeruk	|	6.000	"

#Jumlah item
echo -n "Berapa item yang ingin dibeli: "
read jumlah_item

total_=0

#loop
for ((i=1; i<=jumlah_item; i++))
do

	echo "item ke-$i:"
	echo -n "Pilih menu (1-5) : "
	read menu
	echo -n "jumlah porsi:"
	read porsi

	#Subtotal
	case $menu in
	1) subtotal=$((porsi * 15000 ));;
	2) subtotal=$((porsi * 12000 ));;
	3) subtotal=$((porsi * 18000 ));;
	4) subtotal=$((porsi * 5000 ));;
	5) subtotal=$((porsi * 6000 ));;
	*) echo "Menu tidak ada!"; exit 1;;
esac

echo "subtotal: Rp$subtotal"
total_belanja=$((total_belanja + subtotal ))
done

echo "Total belanja: Rp$total_belanja"
echo -n "Masukkan Jumlah uang:"
read uang

#Menampilkan total belanja
if [ $uang -ge $total_belanja ]; then
	kembalian=$((uang - total_belanja))
	echo "Kembalian:  Rp$kembalian"
else 
	echo "Maaf uang anda tidak cukup!"
fi
echo "Terimakasih telah berbelanja"

