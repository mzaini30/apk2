$("form").on "submit", (x) ->
  x.preventDefault()
  buku.data.add
    judul: $(".judul").val()
    banyak: $(".banyak").val()
    tanggal: tanggal_now
    bulan: bulan_now
    tahun: tahun_now
  buku_tanggal.data.where
    tanggal: tanggal_now
  .each