#!/usr/bin/env python
# coding: utf-8

# In[13]:


import pandas as pd


# In[54]:


df = pd.read_excel('(2007 - 2020) Agg Master Minimal + Treatment Groups + Time-invariant Controls.xlsx')


# In[55]:


s = df['cannabis_legal_rec'].eq(0)
df['first_treated_2007_2020'] = df[~s].groupby(df['cannabis_legal_rec'].eq(0).cumsum())['year'].transform('first')
df.first_treated_2007_2020.fillna(0,inplace=True)

# testing the new script
df['first_treated_2007_2020_2'] = df.groupby('state')['first_treated_2007_2020'].transform(lambda x: x.max)


# In[56]:


list(df.first_treated_2007_2020_2.values)


# In[57]:


df.to_excel('Updated Copy.xlsx')


# In[ ]:




