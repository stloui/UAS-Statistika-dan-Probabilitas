#MemuatLibrary dan menginstalasi tidyverse
install.packages("tidyverse")
library(tidyverse)
#Memuat Dataset
tryCatch({
  file_path <- "../data/data_startup_saas.csv" #memastikan data set sudah ada di folder yang digunakan
  data <- read_csv(file_path)
  
  print(paste("Dataset berhasil dimuat dari:", file_path)) #ini akan terprint kalau dataset bisa dimuat
  
}, error = function(e) {
  print("Gagal memuat dataset") #ini pesan kalau gagal memuat dataset
  print(e)
})

#Pemeriksaan Awal Data
print("Menampilkan 6 baris pertama data:") #memastikan data termuat dengan benar.
print(head(data))

print("Menampilkan struktur data:") #Lihat struktur data
glimpse(data)

print("Menampilkan ringkasan statistik data:") #ringkasan statistik dasar untuk setiap kolom
summary(data)

#Lakukan Pembersihan Data

print("Jumlah missing values per kolom:")
print(colSums(is.na(data)))
#Di data Nilai_Pelanggan_Juta_IDR ada 2 kolom yang tak berisikan value, dan di data Tingkat_Churn_Persen terdapat 1 kolom
data_bersih <- na.omit(data) #Ini digunakan untuk mengapus baris yang mengandung missing value
#anggap data sudah bersih dan menggunakan dataset asli dan gunakan variabel 'data_bersih' untuk analisis selanjutnya.
#Sudah 
print("Persiapan data selesai. Variabel 'data_bersih' siap digunakan.")
