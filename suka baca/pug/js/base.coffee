buku = new Dexie "db buku"
buku_tanggal = new Dexie "db tanggal"
buku_bulan = new Dexie "db bulan"
buku_tahun = new Dexie "db tahun"

buku.version(1).stores
  data: "++id, judul, banyak, tanggal, bulan, tahun"
buku_tanggal.version(1).stores
  data: "++id, tanggal, banyak"
buku_bulan.version(1).stores
  data: "++id, bulan, banyak"
buku_tahun.version(1).stores
  data: "++id, tahun, banyak"
  
sekarang = new Date
tanggal = sekarang.getDate()
bulan = sekarang.getMonth() + 1 
tahun = sekarang.getFullYear()

tanggal_now = "#{tanggal} #{bulan} #{tahun}"
bulan_now = "#{bulan} #{tahun}"
tahun_now = tahun