resource "local_file" "file" {
  filename="${random_id.random-file-name.dec}"
  content = local.content_fr_files
}
resource "local_file" "File1" {
  filename=var.var-obj["f-name"]
  content = var.var-obj["con"]
}
resource "local_file" "file4" {
  filename=var.list[1]
  content="its my 4 file:${var.list[2]}"
}
resource "local_file" "map" {
  filename = var.map1["1"]
  content = "its map file"
}
resource "local_file" "File2" {
  filename=var.var_filename
  content = var.var_content
}

resource "local_file" "Python" {
    filename="p1.py"
    content = "a=12 b=13 sum=a+b print(sum)"
}
locals{
  content_fr_files="its My third file"
}

resource "random_id" "random-file-name" {
  byte_length=8
} 
