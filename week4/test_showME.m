function test_showME()
    try
        levelA();
    catch me
        showME(me);
    end
end
