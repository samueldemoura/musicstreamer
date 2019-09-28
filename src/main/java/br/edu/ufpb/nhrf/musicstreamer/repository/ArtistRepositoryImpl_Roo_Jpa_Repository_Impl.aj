// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.repository;

import br.edu.ufpb.nhrf.musicstreamer.domain.Artist;
import br.edu.ufpb.nhrf.musicstreamer.domain.QArtist;
import br.edu.ufpb.nhrf.musicstreamer.repository.ArtistRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ArtistRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: ArtistRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ArtistRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Artist> ArtistRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QArtist artist = QArtist.artist;
        
        JPQLQuery<Artist> query = from(artist);
        
        Path<?>[] paths = new Path<?>[] {artist.name};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, artist.name);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, artist);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Artist> ArtistRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QArtist artist = QArtist.artist;
        
        JPQLQuery<Artist> query = from(artist);
        
        Path<?>[] paths = new Path<?>[] {artist.name};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(artist.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, artist.name);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, artist);
    }
    
}