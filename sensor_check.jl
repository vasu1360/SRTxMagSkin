using Revise
using RecipesBase, Dates, DataStructures
using SRTxMCU
using Plots
] dev SRTxMCU #get srtx changes

gr(); plot(rand(10))

list_ports()
mcu = connect!("COM3")

mcu[7] #look at channel 1 old data
echo(mcu[1].x_mg)
sync!(mcu[1]) #up to date data from sensor 1
sync!(mcu[2]) #up to date data from sensor 2
sync!(mcu[3]) #up to date data from sensor 3
sync!(mcu[4]) #up to date data from sensor 4
sync!(mcu[5]) #up to date data from sensor 5
sync!(mcu[6]) #up to date data from sensor 6
sync!(mcu[7]) #up to date data from sensor 7
sync!(mcu[8]) #up to date data from sensor 8
sync!(mcu[9]) #up to date data from sensor 9
sync!(mcu[10]) #up to date data from sensor 10
disconnect!(mcu)