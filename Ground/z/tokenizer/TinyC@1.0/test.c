int main() {
    int i;
    i = 0;
    while (i < 10) {
        i = i + 1;        
        if (i == 3 || i == 5) {
			print("%d * 2 = %d", i, double(i));
            continue;
        }        
        if (i == 8) {
            break;
        }
        print("%d! = %d", i, factor(i));
    }
    return 0;
}

int factor(int n) {
    if (n < 2) {
        return 1;
    }
    return n * factor(n - 1);
}

int double(int n) {
	return n * 2;
}