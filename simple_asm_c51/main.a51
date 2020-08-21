main segment code
    rseg main

org 0x0000
    ljmp start

org 0x0100
start:
    sjmp start

end

