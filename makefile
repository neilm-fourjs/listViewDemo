
export FGLIMAGEPATH=./pics:$(FGLDIR)/lib/image2font.txt
export FGLPROFILE=./fglprofile

all:
	gsmake listView.4pw

run:
	fglrun listView.42r
