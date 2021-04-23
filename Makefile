CC          := g++
CPPSRC      := $(wildcard src/*.cpp)
BUILD		:= build
OBJS		:= $(addprefix $(BUILD)/,$(notdir $(CPPSRC:.cpp=.o)) )

QIU_LAN		:= $(BUILD)/qiu.exe

all:$(QIU_LAN)

$(BUILD):
	mkdir $@

$(QIU_LAN):$(BUILD) $(OBJS)
	$(CC) -o $@ $(OBJS)

$(BUILD)/%.o:src/%.cpp
	$(CC) -o $@ -c $<


clean:
	rmdir /s/q $(BUILD)
