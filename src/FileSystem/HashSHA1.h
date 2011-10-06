#ifndef _CCHECKSUMSHA1_H
#define _CCHECKSUMSHA1_H

#include "IHash.h"
#include "sha1/sha1.h"

class HashSHA1: IHash
{
	void Init();
	void Final();
	void Update(const char* data,const int size);
	int getSize();
	int get(int pos);
private:
	SHA1Context sha1Context;
};

#endif
