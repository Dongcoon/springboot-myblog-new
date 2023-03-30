package model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
public class Reply {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false, length = 200)
    private String content;
    @ManyToOne
    @JoinColumn(name = "board")
    private Board board;
    @ManyToOne
    @JoinColumn(name = "userId")
    private User user;
    private Timestamp createTime;

}
