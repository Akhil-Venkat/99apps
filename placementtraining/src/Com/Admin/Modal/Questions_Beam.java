package Com.Admin.Modal;

import java.util.Arrays;

public class Questions_Beam {
	
    public String category ;
	public String categorytype;
    public String option ;
    public String question ;
    public String formula_ans ;
    public String shortcut_ans;
    public String option1;
    public String option2;
    public String option3;
    public String option4;
	
	public Questions_Beam(String category, String categorytype, String option, String question, String formula_ans,
			String shortcut_ans, String option1, String option2, String option3, String option4) 
	{
		super();
		this.category = category;
		this.categorytype = categorytype;
		this.option = option;
		this.question = question;
		this.formula_ans = formula_ans;
		this.shortcut_ans = shortcut_ans;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
	}
	
	@Override
	public String toString() {
		return "Questions_Beam [category=" + category + ", categorytype=" + categorytype + ", option=" + option
				+ ", question=" + question + ", formula_ans=" + formula_ans + ", shortcut_ans=" + shortcut_ans
				+ ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4
				+ "]";
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCategorytype() {
		return categorytype;
	}
	public void setCategorytype(String categorytype) {
		this.categorytype = categorytype;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getFormula_ans() {
		return formula_ans;
	}
	public void setFormula_ans(String formula_ans) {
		this.formula_ans = formula_ans;
	}
	public String getShortcut_ans() {
		return shortcut_ans;
	}
	public void setShortcut_ans(String shortcut_ans) {
		this.shortcut_ans = shortcut_ans;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	
	 
}