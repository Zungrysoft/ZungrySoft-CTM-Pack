start_pos = 0.8
length = 2
spacing = 0.3

def particle(x, y, z):
	x = int(x*1000)/1000
	y = int(y*1000)/1000
	z = int(z*1000)/1000

	print(f"particle minecraft:flame ~{x} ~{y} ~{z}")

def main():
	i = 0
	while(i < length):
		i += spacing
		
		particle(i,start_pos,0)
		particle(-i,start_pos,0)
		
		particle(0,start_pos,i)
		particle(0,start_pos,-i)
		
		particle(0,start_pos+i,0)
		particle(0,start_pos-1,0)
	
	particle(length,start_pos+spacing,0)
	particle(length,start_pos-spacing,0)
	particle(-length,start_pos+spacing,0)
	particle(-length,start_pos-spacing,0)
	
	particle(0,start_pos+spacing,length)
	particle(0,start_pos-spacing,length)
	particle(0,start_pos+spacing,-length)
	particle(0,start_pos-spacing,-length)

main()
