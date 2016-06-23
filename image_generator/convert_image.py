from PIL import Image

im = Image.open('rgb-hsv.png', 'r')
pix_val = list(im.getdata())

for (i, item) in enumerate(pix_val[0:2048]):
	pixel = (int(item[0] / 16) << 8) | (int(item[1] / 16) << 4) | int(item[2] / 16)
	val = format(pixel, '03x')
	print(val + ',')

print()
print('--------------------')
print()

for (i, item) in enumerate(pix_val[2048:]):
	pixel = (int(item[0] / 16) << 8) | (int(item[1] / 16) << 4) | int(item[2] / 16)
	val = format(pixel, '03x')
	print(val + ',')
