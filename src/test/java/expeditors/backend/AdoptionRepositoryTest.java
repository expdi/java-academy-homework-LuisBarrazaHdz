package expeditors.backend;

import expeditors.backend.adoption.Adopter;
import expeditors.backend.adoption.Pet;
import expeditors.backend.adoption.TypePet;
import expeditors.backend.service.AdopterService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertTrue;

@ActiveProfiles({"postgres"})
@SpringBootTest
@Transactional
public class AdoptionRepositoryTest {

    @Autowired
    private AdopterService adopterService;

    @Test
    public void findByIdTest() {
        Optional<Adopter> adopter = adopterService.getAdopterById(3);
        if(adopter.isPresent())
            System.out.println(adopter);

        assertNotNull(adopter);
    }

    @Test
    public void getAllAdoptersTest() {
        assertFalse(adopterService.getAllAdopters().isEmpty());
    }

    @Test
    public void addAdopterTest() {
        Adopter adopter = new Adopter(0,"Melisa Lopez", "111-004-66",LocalDate.now().plusDays(-1));
        assertNotNull(adopterService.addAdopter(adopter));
    }

    @Test
    public void deleteAdopterTest() {
        assertTrue(adopterService.deleteAdopter(1));
    }

    @Test
    public void updateAdopterTest() {
        initializeRegisters(adopterService);

        Adopter adopterUpdate = new Adopter(3,"Melisa Lopez Garcia Test", "111-004-66",LocalDate.now().plusDays(-10));

        adopterService.getAllAdopters().forEach(System.out::println);
        Adopter result = adopterService.updateAdopter(adopterUpdate);
        assertEquals("Melisa Lopez Garcia Test", result.getName());
        adopterService.getAllAdopters().forEach(System.out::println);

    }
}
