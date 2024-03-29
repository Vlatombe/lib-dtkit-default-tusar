/*******************************************************************************
 * Copyright (c) 2010 Thales Corporate Services SAS                             *
 * Author : Gregory Boissinot                                                   *
 *                                                                              *
 * Permission is hereby granted, free of charge, to any person obtaining a copy *
 * of this software and associated documentation files (the "Software"), to deal*
 * in the Software without restriction, including without limitation the rights *
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell    *
 * copies of the Software, and to permit persons to whom the Software is        *
 * furnished to do so, subject to the following conditions:                     *
 *                                                                              *
 * The above copyright notice and this permission notice shall be included in   *
 * all copies or substantial portions of the Software.                          *
 *                                                                              *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR   *
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,     *
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  *
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER       *
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,*
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN    *
 * THE SOFTWARE.                                                                *
 *******************************************************************************/
package com.thalesgroup.dtkit.tusar;

import org.junit.Test;


public class CppTestViolationsTest extends AbstractTest {

    @Test
    public void testcase1() throws Exception {
        convertAndValidate(CppTestViolations.class, "cpptestviolations/testcase1/inputcpptest.xml", "cpptestviolations/testcase1/tusar-result.xml");
    }

    @Test
    public void testcase2() throws Exception {
        convertAndValidate(CppTestViolations.class, "cpptestviolations/testcase2/inputCpptest_mix.xml", "cpptestviolations/testcase2/tusar-result.xml");
    }

    @Test
    public void testcase3() throws Exception {
        convertAndValidate(CppTestViolations.class, "cpptestviolations/testcase3/inputcpptest_std.xml", "cpptestviolations/testcase3/tusar-result.xml");
    }

    @Test
    public void testcase4() throws Exception {
        convertAndValidate(CppTestViolations.class, "cpptestviolations/testcase4/inputcpptest.xml", "cpptestviolations/testcase4/tusar-result.xml");
    }

}