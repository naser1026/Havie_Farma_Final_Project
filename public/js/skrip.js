// Menangkap elemen-elemen input
var large_price = document.getElementById("large_price");
var ppn = document.getElementById("ppn");
var fill = document.getElementById("fill");
var small_price = document.getElementById("small_price");

// Menambahkan event listener untuk input
large_price.addEventListener("input", calculateSmallPrice);
ppn.addEventListener("input", calculateSmallPrice);
fill.addEventListener("input", calculateSmallPrice);

function calculateSmallPrice() {
  // Mendapatkan nilai dari input
  var large_price_value = parseFloat(large_price.value) || 0;
  var ppn_value = parseFloat(ppn.value) || 0;
  var fill_value = parseFloat(fill.value) || 0;

  // Menghitung harga satuan kecil
  var result = (large_price_value / fill_value) * (1 + ppn_value / 100);

  // Menetapkan nilai pada input harga_satuan_kecil
  small_price.value = parseInt(result);
}
