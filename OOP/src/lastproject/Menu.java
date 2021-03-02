/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lastproject;

import java.awt.GridBagConstraints; 


import java.awt.GridBagLayout; 


import java.awt.event.ActionEvent; 


import java.awt.event.ActionListener; 


import javax.swing.JButton; 


import javax.swing.JFrame; 


import javax.swing.JLabel; 


import javax.swing.JOptionPane; 


import javax.swing.JTextField; 


public class Menu extends JFrame implements ActionListener{ 


        private Conditions conditions; 


 private GridBagConstraints constraints; 
 private JLabel lblName; 
 private JLabel lblWindSpeed; 
 private JLabel lblTemperature; 
 private JTextField txtName; 
 private JTextField txtWindSpeed; 
 private JTextField txtTemperature; 
 private JButton btnAddStorm;
 private JButton btnRemove;   
 private JButton btnViews; 
private Storms temp; 



        public Menu() 


 { 


  conditions = new Conditions(); 
  this.setLayout(new GridBagLayout()); 
  constraints = new GridBagConstraints(); 
  initComponents(); 
  layoutComponents(); 
    } 


        public void initComponents() 


 { 


   


  lblName = new JLabel("Storm Name:"); 
  lblWindSpeed = new JLabel("WindSpeed:"); 
  lblTemperature = new JLabel("Temperature:"); 
                txtName = new JTextField(); 
                txtWindSpeed = new JTextField(); 
                txtTemperature = new JTextField(); 


   


  btnAddStorm = new JButton("Add Storm"); 


  btnAddStorm.addActionListener(this); 

  btnRemove = new JButton("Remove Storm"); 


                btnRemove.addActionListener(this); 


                btnViews = new JButton("Views"); 


                btnViews.addActionListener(this); 


        } 


         


        public void layoutComponents(){ 

  constraints.gridy = 1; 

  constraints.gridx = 0; 


  constraints.gridwidth = 1; 


                    this.add(btnAddStorm, constraints); 


  constraints.gridy = 2; 


  constraints.gridx = 0; 


                constraints.gridwidth = 1; 


  this.add(lblName, constraints); 


                 


        constraints.gridy = 2; 


        constraints.gridx = 1; 


         constraints.gridwidth = 2; 


 constraints.fill = GridBagConstraints.HORIZONTAL; 


 this.add(txtName, constraints); 




  constraints.gridy = 3; 


  constraints.gridx = 0; 


                constraints.gridwidth = 1; 


  this.add(lblWindSpeed, constraints); 


   


 constraints.gridy = 3; 


        constraints.gridx = 1; 


        constraints.gridwidth = 2; 


 constraints.fill = GridBagConstraints.HORIZONTAL; 


 this.add(txtWindSpeed, constraints); 


         


                constraints.gridy = 4; 


  constraints.gridx = 0; 


                constraints.gridwidth = 1; 


  this.add(lblTemperature, constraints); 


   


 constraints.gridy = 4; 


        constraints.gridx = 1; 


        constraints.gridwidth = 2; 


 constraints.fill = GridBagConstraints.HORIZONTAL; 


 this.add(txtTemperature, constraints); 


   constraints.gridwidth = 1; 


  constraints.gridy = 5; 


  constraints.gridx = 0; 


  this.add(btnRemove, constraints); 


                


                 


                    constraints.gridy = 5; 


                    constraints.gridx = 2; 


                    this.add(btnViews, constraints); 


         


        } 
@Override
    public void actionPerformed(ActionEvent ev) 


 { 


            if (ev.getSource().equals(btnAddStorm)) 


            { 


                if(txtWindSpeed.getText().equals("")||txtName.getText().equals("")) 


                { 

                        JOptionPane.showMessageDialog(null, "Fill all spaces"); 


                } 


                else 

                { 
                temp=new Tornado((txtWindSpeed.getText()),txtName.getText()); 


                    if(conditions.add(temp)){ 

                        JOptionPane.showMessageDialog(null,temp.getName()+"Succesfully added\n" + temp.getAlertMessage() + temp.getClassification()); 

                } 
               
                    else if(txtWindSpeed.getText().equals("")||txtName.getText().equals("")||txtTemperature.getText().equals("")) 
                    {
                        temp=new Blizzard((txtWindSpeed.getText()),txtName.getText(),txtTemperature.getText()); 
                        if(conditions.add(temp)){ 
                        JOptionPane.showMessageDialog(null,temp.getName()+"Succesfully added\n" + temp.getAlertMessage() + temp.getClassification()); 
                    }
                    
                 else

                    { 


                          JOptionPane.showMessageDialog(null, "Error"); 


                    } 


                 


                } 
                }
            }

            
            if(ev.getSource().equals(btnRemove))

            { 


                if(txtName.getText().equals("")){ 


                JOptionPane.showMessageDialog(null,"Insert Name Of The Storm"); 


                } 


                else if(conditions.remove(txtName.getText())) 


                { 


                JOptionPane.showMessageDialog(null, "Storm Removed"); 


                } 


                else 


                { 


                JOptionPane.showMessageDialog(null, "Error"); 


                } 


            } 


            if (ev.getSource().equals(btnViews)) 


            { 


            if(txtName.getText().equals("")){ 


                JOptionPane.showMessageDialog(null,"Insert Name Of The Storm"); 


            } 


            else{


                JOptionPane.showMessageDialog(null,conditions.view_info(txtName.getText())); 
            }
            
            
            }