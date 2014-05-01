#Tic tac toe
def print_board(board):
	for i in range(0,3):
		print(board[i])
def checkx(board):
	row1=board[0]
	row2=board[1]
	row3=board[2]
	check1=0
	check2=0
	check3=0
	for i in range(0,3):
		if row1[i]=="X":
			check1+=1
		if row2[i]=="X":
			check2+=1
		if row3[i]=="X":
			check3+=1
	if check1==3 or check2==3 or check3==3:
		return True
	else:
		check1=0
		check2=0
		check3=0
	
	col1=row1[0]+row2[0]+row3[0]
	col2=row1[1]+row2[1]+row3[1]
	col3=row1[2]+row2[2]+row3[2]
	for i in range(0,3):
		if col1[i]=="X":
			check1+=1
		if col2[i]=="X":
			check2+=1
		if col3[i]=="X":
			check3+=1

	if check1==3 or check2==3 or check3==3:
		return True
	else:
		check1=0
		check2=0
		check3=0
	
	diag1=row1[0]+row2[1]+row3[2]
	diag2=row1[2]+row2[1]+row3[1]
	for i in range(0,3):
		if diag1[i]=="X":
			check1+=1
		if diag2[i]=="X":
			check2+=1
	
	if check1==3 or check2==3:
		return True
	else:
		check1=0
		check2=0
		check3=0
	
	return False
def checko(board):
	row1=board[0]
	row2=board[1]
	row3=board[2]
	check1=0
	check2=0
	check3=0
	for i in range(0,3):
		if row1[i]=="O":
			check1+=1
		if row2[i]=="O":
			check2+=1
		if row3[i]=="O":
			check3+=1
	if check1==3 or check2==3 or check3==3:
		return True
	else:
		check1=0
		check2=0
		check3=0
	
	col1=row1[0]+row2[0]+row3[0]
	col2=row1[1]+row2[1]+row3[1]
	col3=row1[2]+row2[2]+row3[2]
	for i in range(0,3):
		if col1[i]=="O":
			check1+=1
		if col2[i]=="O":
			check2+=1
		if col3[i]=="O":
			check3+=1

	if check1==3 or check2==3 or check3==3:
		return True
	else:
		check1=0
		check2=0
		check3=0
	
	diag1=row1[0]+row2[1]+row3[2]
	diag2=row1[2]+row2[1]+row3[1]
	for i in range(0,3):
		if diag1[i]=="O":
			check1+=1
		if diag2[i]=="O":
			check2+=1
	
	if check1==3 or check2==3:
		return True
	else:
		check1=0
		check2=0
		check3=0
	
	return False
	
def mark(player,board):
	not_marked=True
	while not_marked==True:
		row=int(input("Choose a row: "))
		col=int(input("Choose a column: "))
		check=board[row-1]
		if row>3 or row<1 or col>3 or col<1:
			print("Please use numbers between 1 and 3")
		else:
			if check[col-1]=="X" or check[col-1]=="O":
				print("Choose another spot")
			else:
				if player==False:
					temp=board[row-1]
					temp[col-1]="X"
					board[row-1]=temp
					player=True
					not_marked=False
				else:
					temp=board[row-1]
					temp[col-1]="O"
					board[row-1]=temp
					player=False
					not_marked=False
	return player			
board=[["/", "/", "/"],["/", "/", "/"],["/", "/", "/"]]
player=False	
xwin=False
owin=False
while xwin==False and owin==False:
	#if player is false X marks if true o marks
	print_board(board)
	if player==False:
		player=mark(player,board)
		xwin=checkx(board)
	else:
		player=mark(player,board)
		owin=checko(board)

print_board(board)
if xwin==True:
	print("Player 1 wins")
else:
	print("Player 2 wins")