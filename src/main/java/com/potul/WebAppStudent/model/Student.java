package com.potul.WebAppStudent;


import lombok.*;

@Getter
@Setter
@ToString
@EqualsAndHashCode(of={"indexNumber"})
@AllArgsConstructor
@NoArgsConstructor
public class Student {

    private String indexNumber;
    private String firstName;
    private String lastName;
    private Double average;
    private Gender gender;
    private boolean active;
}
