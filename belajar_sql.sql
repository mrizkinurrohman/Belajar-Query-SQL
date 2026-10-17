select 
	dk.nama_karyawan,
	dt.nama_toko
from dim_karyawan dk
join dim_toko dt on dk.toko_id = dt.toko_id;

select * from dim_karyawan dk 
where jabatan = 'Senior Sales';

select 
	fp.penjualan_id,
	dp.nama_produk,
	dpel.nama_pelanggan,
	dt.nama_toko,
	dk.nama_karyawan,
	dw.hari,
	dw.bulan,
	dpros.nama_promosi,
	fp.kuantitas, 
	fp.total_harga,
	fp.status_transaksi
	from fact_penjualan fp 
	join dim_produk dp on fp.produk_id = dp.produk_id
	join dim_pelanggan dpel on fp.pelanggan_id = dpel.pelanggan_id
	join dim_toko dt on fp.toko_id = dt.toko_id
	join dim_karyawan dk on fp.karyawan_id = dk.karyawan_id
	join dim_waktu dw on fp.waktu_id = dw.waktu_id
	join dim_promosi dpros on fp.promosi_id = dpros.promosi_id;

select avg(total_harga) AS Total_harga from fact_penjualan fp





