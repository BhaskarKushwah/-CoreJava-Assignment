package assignment_first;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class ReadFile {

	public static void main(String[] args) throws IOException {

		BufferedReader bufferedReader = new BufferedReader(new FileReader("Read.txt"));
		HashMap<String, Integer> hashMap = new HashMap<>();
		String check;
		while ((check = bufferedReader.readLine()) != null) {
			if (hashMap.containsKey(check)) // int value=hashMap.values();
				hashMap.put(check, hashMap.get(check) + 1);

			else {

				hashMap.put(check, 1);
			}
		}
		List<Map.Entry<String, Integer>> list = new ArrayList<>(hashMap.entrySet());
		list.sort((o1, o2) -> o2.getValue() - o1.getValue());
		for (Entry<String, Integer> checkMap : list) {
			System.out.println(checkMap.getKey() + "    " + checkMap.getValue());
		}
	}
}
