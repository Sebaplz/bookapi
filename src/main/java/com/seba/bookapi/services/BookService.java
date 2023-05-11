package com.seba.bookapi.services;

import com.seba.bookapi.repositories.BookRepository;
import org.springframework.stereotype.Service;
import com.seba.bookapi.models.Book;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {
    //Agregando el book al repositorio como una dependencia
    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    //Devolviendo todos los libros.
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }

    //Creando un libro.
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }

    //Obteniendo la información de un libro
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }

    public Book updateBook(Long id, String title, String desc, String lang, int pages){
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            Book bookToUpdate = optionalBook.get();
            if (title != null){
                bookToUpdate.setTitle(title);
            }
            if(desc != null){
                bookToUpdate.setDescription(desc);
            }
            if (lang != null){
                bookToUpdate.setLanguage(lang);
            }
            bookToUpdate.setNumberOfPages(pages);
            bookRepository.save(bookToUpdate);
            return bookToUpdate;
        } else {
            return null;
        }
    }


    public Book deleteBook(Long id){
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()){
            bookRepository.deleteById(id);
            return optionalBook.get();
        }else{
            return null;
        }
    }

    public Book updateBook(Book book) {
        Optional<Book> optionalBook = bookRepository.findById(book.getId());
        if (optionalBook.isPresent()){
            Book book1 = optionalBook.get();
            book1.setTitle(book.getTitle());
            book1.setDescription(book.getDescription());
            book1.setLanguage(book.getLanguage());
            book1.setNumberOfPages(book.getNumberOfPages());
            bookRepository.save(book1);
            return book1;
        }else{
            return null;
        }

    }
}

