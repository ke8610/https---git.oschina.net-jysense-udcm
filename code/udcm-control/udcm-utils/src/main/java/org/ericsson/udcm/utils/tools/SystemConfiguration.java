package org.ericsson.udcm.utils.tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class SystemConfiguration {

	private static Properties prop;
	private static Properties jdbc_prop;
	private static final String PROP_FILE_NAME = "udcm.properties";
	static {
		prop = new Properties();
		InputStream fs;
		try {
			fs = SystemConfiguration.class.getClassLoader().getResourceAsStream(PROP_FILE_NAME); 
			prop.load(fs);
			fs.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static String getProperty(String key) {
		return prop.getProperty(key);
	}
	
}
