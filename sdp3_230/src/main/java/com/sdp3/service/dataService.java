package com.sdp3.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdp3.model.datainsert;
import com.sdp3.repository.dataRepository;

@Service("dataService")
@Transactional
public class dataService {
	
	public dataService(dataRepository datarepo) {
		this.datarepo = datarepo;
	}

	private final dataRepository datarepo;
	
	public void savedata(datainsert datainsert) {
		datarepo.save(datainsert);
	}

	public List<datainsert> getamendments() {
		
		String amen = "amendments";
		
		List<datainsert> alldata = datarepo.findByCategory(amen);
		return alldata;
	}
	
public List<datainsert> getschedules() {
		
		String sch = "Schedules";
		
		List<datainsert> allsch = datarepo.findByCategory(sch);
		return allsch;
	}

public List<datainsert> getparts() {
	
	String parts = "parts";
	
	List<datainsert> allparts = datarepo.findByCategory(parts);
	return allparts;
}

public List<datainsert> getarticles() {
	
	String artical = "Articles";
	
	List<datainsert> allarticle = datarepo.findByCategory(artical);
	return allarticle;
}

public int updatem(String title,String description,String category,String statement) {
	
	datainsert updata = datarepo.findByTitle(title);
//	updata.setTitle(title);
	updata.setCategory(category);
	updata.setDescription(description);
	updata.setStatement(statement);
	if(datarepo.save(updata) != null)
	return 1;
	else
	return 0;
//	return updata;
}
	

}
