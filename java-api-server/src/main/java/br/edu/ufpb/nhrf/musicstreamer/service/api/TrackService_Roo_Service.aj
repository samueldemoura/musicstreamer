// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.service.api;

import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import br.edu.ufpb.nhrf.musicstreamer.service.api.TrackService;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect TrackService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Track
     */
    public abstract Track TrackService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param track
     */
    public abstract void TrackService.delete(Track track);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Track> TrackService.save(Iterable<Track> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void TrackService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Track
     */
    public abstract Track TrackService.save(Track entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Track
     */
    public abstract Track TrackService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Track> TrackService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Track> TrackService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long TrackService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Track> TrackService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Track> TrackService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param album
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Track> TrackService.findByAlbum(Album album, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param artist
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Track> TrackService.findByArtist(Artist artist, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param album
     * @return Long
     */
    public abstract long TrackService.countByAlbum(Album album);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param artist
     * @return Long
     */
    public abstract long TrackService.countByArtist(Artist artist);
    
}
