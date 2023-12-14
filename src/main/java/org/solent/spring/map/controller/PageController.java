/*
    Updated: Kyle Roberts 17 Nov 2023, 14:46:00
    Update Description: Add in two extra functions to give the map functionality
                        So a user can view new points they have added to a map
                        Modify a map point, or delete a map point
*/

package org.solent.spring.map.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.solent.spring.map.model.MapPoint;
import org.solent.spring.map.repository.MapPointRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.bind.annotation.ExceptionHandler;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.solent.spring.map.controller.FileUploadDAO;
import org.solent.spring.map.model.MapPoint;


@Controller
public class PageController {
    final static Logger LOG = LogManager.getLogger(PageController.class);
    
    @Autowired
    MapPointRepository mapPointRepository;
    
    @Autowired
    FileUploadDAO fileUploadDao;
    
    @RequestMapping("/pointList")
	public String photoPage(Model model) {
		LOG.debug("/pointList called");

		List<MapPoint> mapPoints = mapPointRepository.findAll();

		model.addAttribute("mapPoints", mapPoints);

		return "PointListJsp";
	}

	@RequestMapping(value = "/viewModifyPoint", method = { RequestMethod.POST })
	@Transactional
	public String photoModify(@RequestParam(value = "action", required = false) String action,
			@RequestParam(value = "pointId", required = false) String pointId,
			@RequestParam(value = "pointName", required = false) String pointName,
			@RequestParam(value = "pointDescription", required = false) String pointDescription,
			@RequestParam(value = "pointCategory", required = false) String pointCategory,
			@RequestParam(value = "pointlat", required = false) String pointlat,
			@RequestParam(value = "pointlon", required = false) String pointlon,
			@RequestParam(value = "pointphotoUrl", required = false) String pointphotoUrl,
			// used to upload the image file
			@RequestParam(value = "image", required = false) MultipartFile multipartFile,

			Model model) {
		LOG.debug("/viewModifyPoint called: " + " action=" + action + " pointId=" + pointId + " pointName=" + pointName
				+ " pointDescription=" + pointDescription + " pointCategory=" + pointCategory + " pointlat=" + pointlat
				+ " pointlon=" + pointlon + " pointphotoUrl=" + pointphotoUrl);
		String message = "";
		String errorMessage = "";

		MapPoint mapPoint = new MapPoint();

		if ("deletePoint".equals(action)) {
			try {
				Long id = Long.valueOf(pointId);
				Optional<MapPoint> mapPointOption = mapPointRepository.findById(id);
				if (mapPointOption.isPresent()) {
					mapPoint = mapPointOption.get();
					String oldFileName = mapPoint.getPhotoUrl();
					String relativeUploadDir = "/user-photos/" + mapPoint.getId();
					if (oldFileName != null && !oldFileName.isEmpty())
						fileUploadDao.deleteIfExistsFile(relativeUploadDir, oldFileName);
					mapPointRepository.deleteById(id);
				}
				model.addAttribute("message", "deleted point id=" + pointId);
				LOG.debug("deleted point id=" + pointId);
			} catch (IOException e) {
				LOG.debug("problem deleting file locally ", e);
				errorMessage = "problem saving file locally " + e.getMessage();
			}

			return "redirect:/pointList";

		} else if ("newPoint".equals(action)) {
			LOG.debug("newPoint action called ");
			// do nothing - just return a page to update the point

		} else if ("modifyPoint".equals(action)) {
			if (pointId == null || pointId.isEmpty()) {
				LOG.debug("modifyPoint action called - no id so new point ");
				// new point - create in database
			} else {
				LOG.debug("modifyPoint called point id=" + pointId);
				Long id = Long.valueOf(pointId);
				Optional<MapPoint> mapPointOption = mapPointRepository.findById(id);
				if (mapPointOption.isPresent()) {
					mapPoint = mapPointOption.get();
				} else {
					LOG.error("errorMessage", "cannot find point id=" + pointId + " to update ");
					model.addAttribute("errorMessage", "cannot find point id=" + pointId + " to update ");
					return "redirect:/pointList";
				}
			}

		} else if ("updatePoint".equals(action)) {
			if (pointId == null || pointId.isEmpty()) {
				LOG.debug("updatePoint action called - no id so new point ");
				// new point - create in database
			} else {
				LOG.debug("updatePoint called point id=" + pointId);
				Long id = Long.valueOf(pointId);
				Optional<MapPoint> mapPointOption = mapPointRepository.findById(id);
				if (mapPointOption.isPresent()) {
					mapPoint = mapPointOption.get();
				} else {
					LOG.error("errorMessage cannot find point id=" + pointId + " to update ");
					model.addAttribute("errorMessage", "cannot find point id=" + pointId + " to update ");
					return "redirect:/pointList";
				}
			}
			mapPoint.setName(pointName);
			mapPoint.setDescription(pointDescription);
			mapPoint.setCategory(pointCategory);
			mapPoint.setPhotoUrl(pointphotoUrl);

			try {
				double lat = Double.parseDouble(pointlat);
				double lon = Double.parseDouble(pointlon);
				mapPoint.setLat(lat);
				mapPoint.setLng(lon);
			} catch (Exception e) {
				LOG.error("cannot parse latitude or longitude", e);
				errorMessage = "cannot parse latitude or longitude";
				model.addAttribute("errorMessage", errorMessage);
				model.addAttribute("mapPoint", mapPoint);
				return "ViewModifyPointJsp";
			}

			// save or update
			mapPoint = mapPointRepository.save(mapPoint);
			return "redirect:/pointList";

		} else if ("updatePointPhoto".equals(action)) {
			if (pointId == null || pointId.isEmpty()) {
				LOG.debug("updatePoint action called - no id so new point ");
				// new point - create in database
			} else {
				LOG.debug("updatePoint called point id=" + pointId);
				Long id = Long.valueOf(pointId);
				Optional<MapPoint> mapPointOption = mapPointRepository.findById(id);
				if (mapPointOption.isPresent()) {
					mapPoint = mapPointOption.get();
				} else {
					LOG.error("errorMessage cannot find point id=" + pointId + " to update ");
					model.addAttribute("errorMessage", "cannot find point id=" + pointId + " to update ");
					return "redirect:/pointList";
				}
			}

			// add photo to point
			String oldFileName = mapPoint.getPhotoUrl();
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			mapPoint.setPhotoUrl(fileName);

			mapPoint = mapPointRepository.save(mapPoint);

			String relativeUploadDir = "/user-photos/" + mapPoint.getId();

			try {
				if (oldFileName != null && !oldFileName.isEmpty())
					fileUploadDao.deleteIfExistsFile(relativeUploadDir, oldFileName);
				if (fileName != null && !fileName.isEmpty())
					fileUploadDao.saveFile(relativeUploadDir, fileName, multipartFile);
			} catch (IOException e) {
				LOG.debug("problem saving file locally ", e);
				message = "problem saving file locally " + e.getMessage();
			}

		} else {
			errorMessage = "unknown action called: " + action;
			return "redirect:/pointList";
		}

		model.addAttribute("mapPoint", mapPoint);
		model.addAttribute("message", message);
		model.addAttribute("errorMessage", errorMessage);

		return "ViewModifyPointJsp";
	}
        
    @RequestMapping("/index")
    public String getHomePage(){
        return "index";
    }

    @RequestMapping("/map")
    public String mapPage(){
        return "map";
    }
        
     @RequestMapping("/login")
    public String loginPage(){
        return "login";
    }
    
    @RequestMapping("/newPoint")
    public String newPoint(){
        return "newPoint";
    }
    
    @RequestMapping("/changeLocaleSpring")
    public String getChangeLocalPage(){
        return "changeLocaleSpring";
    }
    
    @RequestMapping("/termsAndConditions")
    public String termsAndConditions(){
        return "termsAndConditions";
    }
}
