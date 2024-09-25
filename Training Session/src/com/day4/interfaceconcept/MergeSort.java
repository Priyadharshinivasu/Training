package com.day4.interfaceconcept;

public class MergeSort implements SortAlgorithm {

	@Override
	public void sort() {
		int[] a = { 11, 30, 24, 7, 31, 16 };
		int l = a.length;
		System.out.println("Before sorting ");
		printArray(a, l);
		mergeSort(a, 0, l-1);
		System.out.println("After sorting ");
		printArray(a, l);

	}

	void mergeSort(int[] a, int start, int end) {
		if (start < end) {
			int mid = start + end / 2;
			mergeSort(a, start, mid);
			mergeSort(a, mid + 1, end);
			merge(a, start, mid, end);
		}
	}

	void merge(int[] a, int start, int mid, int end) {
		int l1 = mid - start + 1;
		int l2 = end - mid;
		int[] leftarr = new int[l1];
		int[] rightarr = new int[l2];

		for (int i = 0; i < l1; i++) {
			leftarr[i] = a[start + i];
		}
		for (int j = 0; j < l2; j++) {
			rightarr[j] = a[mid + 1 + j];
		}
		int k = start;
		int x = 0;
		int y = 0;
		while (x < l1 && y < l2) {
			if (leftarr[x] <= rightarr[y]) {
				a[k] = leftarr[x];
				x++;
			} else {
				a[k] = rightarr[y];
				y++;
			}
			k++;
			
		}
	}

	void printArray(int[] a, int l) {
		for (int i = 0; i < l; i++) {
			System.out.print(a[i] + " ");
		}
	}

	public static void main(String[] args) {
		MergeSort m = new MergeSort();
		m.sort();
	}

}
