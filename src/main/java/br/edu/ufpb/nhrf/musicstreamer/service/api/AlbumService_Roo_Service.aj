// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.service.api;

import br.edu.ufpb.nhrf.musicstreamer.domain.Album;
import br.edu.ufpb.nhrf.musicstreamer.service.api.AlbumService;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect AlbumService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Album
     */
    public abstract Album AlbumService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param album
     */
    public abstract void AlbumService.delete(Album album);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Album> AlbumService.save(Iterable<Album> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void AlbumService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Album
     */
    public abstract Album AlbumService.save(Album entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Album
     */
    public abstract Album AlbumService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Album> AlbumService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Album> AlbumService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long AlbumService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Album> AlbumService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Album> AlbumService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param album
     * @param tracksToAdd
     * @return Album
     */
    public abstract Album AlbumService.addToTracks(Album album, Iterable<Long> tracksToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param album
     * @param tracksToRemove
     * @return Album
     */
    public abstract Album AlbumService.removeFromTracks(Album album, Iterable<Long> tracksToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param album
     * @param tracks
     * @return Album
     */
    public abstract Album AlbumService.setTracks(Album album, Iterable<Long> tracks);
    
}
