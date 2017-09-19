package br.com.hidemiphone.controller;

import java.io.IOException;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.hidemiphone.entity.Arquivo;
import br.com.hidemiphone.storage.StorageFileNotFoundException;
import br.com.hidemiphone.storage.StorageService;

@Controller
public class FileUploadController {

    private final StorageService storageService;

    @Autowired
	Arquivo arquivo;
    
    @Autowired
    public FileUploadController(StorageService storageService) {
        this.storageService = storageService;
    }

    @GetMapping("/prd/upload")
    public String listUploadedFiles(Model model) throws IOException {

        model.addAttribute("files", storageService
                .loadAll()
                .map(path ->
                        MvcUriComponentsBuilder
                                .fromMethodName(FileUploadController.class, "serveFile", path.getFileName().toString())
                                .build().toString())
                .collect(Collectors.toList()));
        
        	
        model.addAttribute("arquivo", arquivo);
        return "uploadForm";
    }

    @GetMapping("/prd/upload/files/{filename:.+}")
    @ResponseBody
    public ResponseEntity<Resource> serveFile(@PathVariable String filename) {

        Resource file = storageService.loadAsResource(filename);
        return ResponseEntity
                .ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""+file.getFilename()+"\"")
                .body(file);
    }

    @PostMapping("/prd/upload")
    public String handleFileUpload(@RequestParam("foto") MultipartFile foto, @RequestParam("txtCodigo") Integer codigo, @RequestParam("txtNome") String nome,
                                   RedirectAttributes redirectAttributes) {

    	
    	arquivo.setCodigo(codigo);
    	arquivo.setNome(nome);
    	arquivo.setFoto(foto.getName());
    	
        storageService.store(foto);
        redirectAttributes.addFlashAttribute("message",
                "Upload feito com sucesso!");

        return "redirect:upload";
    }

    @SuppressWarnings("rawtypes")
	@ExceptionHandler(StorageFileNotFoundException.class)
    public ResponseEntity handleStorageFileNotFound(StorageFileNotFoundException exc) {
        return ResponseEntity.notFound().build();
    }

}
