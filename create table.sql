use tokoku;

create table pelanggan(
	id int primary key not null auto_increment,
    nama varchar(50),
    alamat varchar(50),
    no_hp varchar(50),
    jenis_kelamin varchar(20)
);

create table kategori(
	id int primary key not null auto_increment,
    nama_ktgr varchar(50)
);


create table barang(
	id int primary key not null auto_increment,
    nama_brg varchar(50),
    harga_brg int,
    stok_brg int,
    id_ktgr int,
    foreign key (id_ktgr) references kategori(id)
);

create table transaksi(
	id int primary key not null auto_increment,
    tanggal_transaksi date,
    jumlah_pembelian int,
    id_pelanggan int,
    id_brg int,
    foreign key (id_pelanggan) references pelanggan(id),
    foreign key (id_brg) references barang(id)
);
desc transaksi;
